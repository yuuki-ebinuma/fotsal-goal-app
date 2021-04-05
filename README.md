# README

## アプリケーション名
フットサル大会マッチングアプリ

## アプリケーション概要
本アプリを使用することで大会を運営するフットサル場と大会に参加したいユーザーをマッチングすることができます。
運営側は大会情報を入力して投稿することができます。また、ユーザー側は参加したい大会にエントリーすることができます。

## URL
https://fotsal-goal-app.herokuapp.com/

## テスト用アカウント

運営側ログイン
メールアドレス:aaa@gamil.com
pass:123456

ユーザー側ログイン
メールアドレス:test@gamil.com
pass:123456

basic認証
ID:admin
PASS:1111

## 利用方法
・トップ画面では運営側、ユーザー側と２通りのログイン箇所があります。
[![Image from Gyazo](https://i.gyazo.com/8ba7fd8606fe1f3bb35ac9cc5b965ae2.jpg)](https://gyazo.com/8ba7fd8606fe1f3bb35ac9cc5b965ae2)

.運営側でログインした場合、トップ画面ではユーザー側ログインリンクが消え””参加者を募集する”というリンクを表示してます。
[![Image from Gyazo](https://i.gyazo.com/ce2b1671f4f3a4d8c2185e37fc39d5d7.jpg)](https://gyazo.com/ce2b1671f4f3a4d8c2185e37fc39d5d7)

・運営ログアウトを押すとログアウトします。

・”参加者を募集する”を押すと募集したい大会の情報を投稿することができます。
[![Image from Gyazo](https://i.gyazo.com/b28ec65ab4e851c4197e58d75f9bbbd6.gif)](https://gyazo.com/b28ec65ab4e851c4197e58d75f9bbbd6)





## 目指した課題解決
現在大会を運営するフットサル場ではホームページやSNSでの大会参加者を集めています。しかし、参加者を集めるというのも容易ではなく、多くの大会参加者を募らなければ大会自体ができないという問題があります。
ユーザー側では、どのフットサル場でどのような大会が開催されているのかがわかりづらいという課題があります。
この点を解決するためにマッチングアプリで各大会情報が一括で募集・参加ができれば解決される。

## 洗い出した要件
・basic認証
・ログイン機能
・投稿機能
・一覧表示機能
・参加機能
・編集機能
・削除機能
・参加チーム残り機能

## 


## users テーブル

| Column          | Type   | Options     |
| --------------  | ------ | ----------- |
| name            | string | null: false |
| email           | string | null: false, unique: true |
| encrypted_password|string| null: false |
| last_name       | string | null: false |
| first_name      | string | null: false |
| last_name_kana  | string | null: false |
| first_name_kana | string | null: false |
| phone           | string | null: false |

### Association

- has_many :entrys


## Operations テーブル

| Column          | Type   | Options     |
| --------------  | ------ | ----------- |
| operation_name  | string | null: false |
| address         | string | null: false |
| city            | string | null: false |
| person          | string | null: false |
| operation_phone | string | null: false |

### Association

- has_many :tournaments



## tournaments テーブル

| Column              | Type   | Options     |
| --------------      | ------ | ----------- |
| operation_id        | integer | foreign_key: true |
| event_date          | integer  | null: false  |
| event_time          | integer  | null: false |
| event_address       | string  | null: false |
| entry_Participation | integer | null: false |
| fee                 | integer | null: false |
| event_description   | integer | null: false |
| event_month         | integer | null: false |

### Association

- belongs_to :entry
- belongs_to :operation




## entry テーブル

| Column         | Type    | Options     |
| ---------------| ------  | ----------- |
| tournament_id  | integer | foreign_key: true |
| user_id        | integer | foreign_key: true |
| team_name      | string  | null: false |
| team_captain   | string  | null: false |
| phone          | integer | null: false |

### Association

- belongs_to :tournament
- belongs_to :user


<!-- ## enter_kosal テーブル

| Column         | Type    | Options     |
| ---------------| ------  | ----------- |
| operation_id   | integer | foreign_key: true |
| kosal_id       | integer | foreign_key: true |
| user_id        | integer | foreign_key: true | -->



<!-- ## kosals テーブル

| Column              | Type   | Options     |
| --------------      | ------ | ----------- |
| operation_id        | integer | foreign_key: true |
| user_id             | integer | foreign_key: true |
| event_date          | string  | null: false  |
| event_time          | string  | null: false |
| event_address       | string  | null: false |
| event_Participation | integer | null: false |

### Association

- belongs_to user
- belongs_to operation -->

