#!/bin/sh
# ==============================================================================
# babanba-n.mydns.jp Let's Encrypt SSL証明書 初期発行スクリプト
# ==============================================================================
# 使い方:
#   sh ./init-letsencrypt.sh [メールアドレス] [COMPOSE_OPTION]
#   または
#   ./init-letsencrypt.sh [メールアドレス] [COMPOSE_OPTION]
#
# 例 (本番サーバー x86):
#   ./init-letsencrypt.sh user@example.com "-f docker-compose.yml -f docker-compose.server.yml"
#
# 例 (Raspberry Pi):
#   ./init-letsencrypt.sh user@example.com "-f docker-compose.yml -f docker-compose.rasberrypi.yml"
# ==============================================================================

set -eu

domain="babanba-n.mydns.jp"
rsa_key_size=4096
data_path="./certbot"

email="${1:-}"
compose_opt="${2:-}"

# メールアドレスの確認
if [ -z "$email" ]; then
  printf "Let's Encrypt 登録用のメールアドレスを入力してください: "
  read email
fi

if [ -z "$email" ]; then
  echo "エラー: メールアドレスは必須です。"
  exit 1
fi

# Compose オプションの確認（未指定時の選択）
if [ -z "$compose_opt" ]; then
  echo "実行環境を選択してください:"
  echo "  1) 本番サーバー (docker-compose.server.yml)"
  echo "  2) Raspberry Pi (docker-compose.rasberrypi.yml)"
  echo "  3) 標準 (docker-compose.yml のみ)"
  printf "選択 [1-3] (デフォルト: 1): "
  read env_choice
  case "${env_choice:-1}" in
    1) compose_opt="-f docker-compose.yml -f docker-compose.server.yml" ;;
    2) compose_opt="-f docker-compose.yml -f docker-compose.rasberrypi.yml" ;;
    3) compose_opt="-f docker-compose.yml" ;;
    *) echo "無効な選択です。"; exit 1 ;;
  esac
fi

COMPOSE_CMD="docker compose $compose_opt"
echo ""
echo "=========================================="
echo "ドメイン: $domain"
echo "メール:   $email"
echo "コマンド: $COMPOSE_CMD"
echo "=========================================="
echo ""

# 既存証明書のチェック
if [ -d "$data_path/conf/live/$domain" ]; then
  printf "既存の証明書が見つかりました。上書き再取得しますか？ (y/N): "
  read decision
  if [ "$decision" != "Y" ] && [ "$decision" != "y" ]; then
    echo "処理を中断しました。"
    exit 0
  fi
fi

# 1. ダミー証明書の作成 (Nginxの起動エラー回避)
echo "==> 1/5: ダミー証明書を作成しています..."
mkdir -p "$data_path/conf/live/$domain"
$COMPOSE_CMD run --rm --entrypoint "\
  openssl req -x509 -nodes -newkey rsa:$rsa_key_size -days 1 \
    -keyout '/etc/letsencrypt/live/$domain/privkey.pem' \
    -out '/etc/letsencrypt/live/$domain/fullchain.pem' \
    -subj '/CN=localhost'" certbot

# 2. Nginx の起動
echo "==> 2/5: Nginx を起動しています..."
$COMPOSE_CMD up --force-recreate -d nginx

# 3. ダミー証明書の削除
echo "==> 3/5: ダミー証明書を削除しています..."
$COMPOSE_CMD run --rm --entrypoint "\
  rm -Rf /etc/letsencrypt/live/$domain && \
  rm -Rf /etc/letsencrypt/archive/$domain && \
  rm -Rf /etc/letsencrypt/renewal/$domain.conf" certbot

# 4. 本番証明書の取得
echo "==> 4/5: Let's Encrypt から本番証明書を取得しています..."
$COMPOSE_CMD run --rm --entrypoint "\
  certbot certonly --webroot -w /var/www/certbot \
    -d $domain \
    --email $email \
    --rsa-key-size $rsa_key_size \
    --agree-tos \
    --no-eff-email \
    --force-renewal" certbot

# 5. Nginx のリロード
echo "==> 5/5: Nginx をリロードして SSL 証明書を反映しています..."
$COMPOSE_CMD exec nginx nginx -s reload

echo ""
echo "================================================================"
echo " HTTPS 化が完了しました！"
echo " ブラウザで https://$domain/ にアクセスして確認してください。"
echo "================================================================"
