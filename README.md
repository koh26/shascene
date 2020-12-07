## usersテーブル

| Column              | Type      | Options     |
| ------------------- | --------- | ----------- |
| nickname            | string    | null: false |
| email               | string    | null: false |
| encrypted_password  | string    | null: false |
| birthday            | date      | null: false |

### Association

- has_many :posts
- has_many :comments

## postsテーブル

| Column         | Type            | Options                        |
| -------------- | --------------- | ------------------------------ |
| title          | string          | null: false                    |
| about          | text            | null: false                    |
| day            | date            | null: false                    |
| user           | references      | null: false, foreign_key: true |

### Association

- belongs_to : user
- has_many : comments

## commentsテーブル

| Column  | Type        | Options                         |
| ------- | ----------- | ------------------------------- |
| text    | text        | null: false                     |
| user    | references  | null: false, foreign_key: true  |
| post    | references  | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :post
