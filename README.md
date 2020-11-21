# STUDY-SUPPORT

## サイト概要

勉強時間や予定、使用参考書を記録しておくことで、勉強自体に集中出来る様にサポートする。

### サイトテーマ

- 自分の努力が継続的な物であるかを客観的に見る
- 数値を可視化する事で客観的な判断をサポートする

### テーマを選んだ理由

- 自身の浪人生活を通して学習手帳の有用性を感じていたが、一つのページに収まらず活用しきれなかった経験から
- 勉強関係の情報をまとめて管理するサイトが欲しかった為

### ターゲットユーザ

学生など日々の学習記録をする人

### 主な利用シーン

- 年間予定の管理
- 勉強の進捗の管理
- 日々の学習時間を記録

### 環境

- docker
- ruby 2.5.7
- rails 5.2.3
- mysql2
- Nginx
- Puma
- AWS(EC2,RDS)
- Bootstrap
- jQuery

### アプリの立ち上げ手順

docker のコンテナを立てる
docker-compose up
別タブでアプリの起動準備
docker-compose exec web rails db:create
docker-compose exec web rails db:migrate RAILS_ENV=development

### アプリのデモデータ読み込み

docker-compose exec web rails db:drop
docker-compose exec web rails db:reset
docker-compose exec web rails db:seed

### rspec での簡易テストの確認方法(一部)

docker-compose exec web rspec spec

### 機能一覧

https://docs.google.com/spreadsheets/d/1bA42QbMgT3bWOHPbRyIiFXhN-48xaL2RX58cjw6TnaI/edit#gid=0
