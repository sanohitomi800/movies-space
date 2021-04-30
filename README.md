# README
## users テーブル

|     Column       |  Type     |   Option         |
|----------------  |-----------|------------------|
| email            |  string   | null: false      | 
| password         |  string   | null: false      |
| name             |  string   | null: false      | 
| genre_id         |  integer  | null: false      |

### Association

- has_many :movies
- has_many :comments


## movies テーブル

|     Column       |  Type     |   Option         |
|----------------  |-----------|------------------|
| title            |  string   | null: false      | 
| info             |  text     | null: false      |
| genre_id         |  integer  | null: false      | 
| user             | references|foreign_key: true |

### Association

- belongs_to :user
- has_many :comments



## comments テーブル

|     Column       |  Type     |   Option         |
|----------------  |-----------|------------------|
| text             |  text     | null: false      | 
| user             | references| foreign_key: true|
| movie            | references| foreign_key: true|
        

### Association

- belongs_to :user
- belongs_to :movie
