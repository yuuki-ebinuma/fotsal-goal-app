# README


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

