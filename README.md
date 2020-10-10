# STUDY-SUPPORT

## サイト概要

勉強時間や予定、使用参考書を記録しておくことで、勉強自体に集中出来る様にサポートする。

### サイトテーマ

- 自分の努力が継続的な物であるかを客観的に見る
- 数値を可視化する事で客観的な判断をサポートする

### テーマを選んだ理由

1.自身の浪人生活を通して学習手帳の有用性を感じていたが、一つのページに収まらず活用しきれなかった経験から  
2.勉強関係の情報をまとめて管理するサイトが欲しかった為

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
- Bootstrap, jQuery
- その他 gem

### アプリの立ち上げ手順

docker-compose up
別タブにて
docker-compose exec web rails db:create
docker-compose exec web bin/rails db:migrate RAILS_ENV=development
docker-compose exec web rails db:seed

$ rake db:drop
$ rake db:create
$ rake db:schema:load
$ rake db:seed

### rspec での簡易テストの確認方法

docker-compose exec web rspec spec

### 機能一覧

https://docs.google.com/spreadsheets/d/1bA42QbMgT3bWOHPbRyIiFXhN-48xaL2RX58cjw6TnaI/edit#gid=0
