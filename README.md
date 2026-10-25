## 概要

こちらのサイトの、起動方法です

http://babanba-n.mydns.jp/

## 環境構築手順

以下のコマンドを実行して、必要なファイルをpullしてくる

```
git clone https://github.com/publify/publify.git publify
git clone https://github.com/baban/skyscraper_html_contents.git html_contents 
git clone https://github.com/baban/skyscraper_publify_theme.git themes/baban
```

## 起動方法

### Windows環境

```
docker compose -f docker-compose.yml -f docker-compose.local.yml up -d
```

### 本番環境(x86)

```
docker compose -f docker-compose.yml -f docker-compose.server.yml up -d
```

### Rasberry Pi環境

```
docker compose -f docker-compose.yml -f docker-compose.rasberrypi.yml up -d
```

## HTTPS (SSL証明書) の初回発行

本番環境または Raspberry Pi 環境で初めて起動する際、Let's Encrypt の SSL 証明書を取得するために初期化スクリプトを実行します。

```bash
# 対話形式で実行する場合
./init-letsencrypt.sh

# または引数を指定して実行 (例: Raspberry Pi)
./init-letsencrypt.sh user@example.com "-f docker-compose.yml -f docker-compose.rasberrypi.yml"
```

※事前にルーターの 443 番ポートをサーバーに転送（ポート開放）しておいてください。
※証明書発行後は、`certbot` コンテナが常駐して 12 時間ごとに自動更新（renew）を行います。
