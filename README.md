## 概要

こちらのサイトの、起動方法です

http://babanba-n.iobb.net/blog/

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
docker-compose -f docker-compose.yml docker-compose.local.yml up -d
```

### 本番環境

```
docker-compose -f docker-compose.yml docker-compose.server.yml up -d
```
