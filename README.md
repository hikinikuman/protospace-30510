# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| email     | string | NOT NULL    |
| password  | string | NOT NULL    |
| name      | string | NOT NULL    |
| profile   | text   | NOT NULL    |
| occupation| text   | NOT NULL    |
| position  | text   | NOT NULL    |

### Association
 has_many : prototypes
 has_many : comments


## prototypes テーブル

| Column      | Type      | Options     |
| ----------- | --------- | ----------- |
| title       | string    | NOT NULL    |
| catch_copy  | text      | NOT NULL    |
| image       | 今後実装（？）
| user        | reference

### Association
 belong_to :users
 has_many :comments


## comments テーブル

| Column    | Type       | Options      |
| --------- | ---------- | ------------ |
| text      | text       | NOT NULL     |
| user      | references |              |
| prototype | references |              |

### Association
belong_to :users
belong_to :prototypes