## アプリケーション概要

### アプリケーション名
 #### Shascene

 ### トップページ
 ![ac2b102793f4b643d9f419c3842bc2e6](https://user-images.githubusercontent.com/73630337/103587794-5a2cb700-4f2b-11eb-93e7-073c6d2f1dc4.jpg)  

### アプリケーションについて

東日本大震災で奪われてしまった、あの頃の日常景色を投稿して共有するアプリケーションです。  
故郷である宮城県は震災により、生活していた何気ない景色を想い出ごと攫われてしまいました。  
震災前のあの頃の何気ない日常の景色を投稿して共有することで、救われるたくさんの想いがあると考え開発したサービスです。

## アプリケーションの利用方法

### URL(デプロイ)  
https://shascene.herokuapp.com/


### テスト用アカウント
メールアドレス: aaa@aaa  
パスワード： a11111

### 利用方法

* ログイン  
トップページにて「ログイン」をクリックしていただき、テストアカウントの情報を入力していただくとログインすることができます。

* 投稿マップ(宮城県)  
トップページにある宮城県マップの各市がリンクになっており、投稿したい景色の市を選択してそこから画像が投稿できます。

![3e660085dcf303a1589181850165f987](https://user-images.githubusercontent.com/73630337/103587448-9e6b8780-4f2a-11eb-8b76-13a249c27e6b.gif)  

* 画像投稿  
各市のぺージにある「投稿する」ボタンから画像を投稿できます。

![d773543d564a8f73eaedd8561c21feaa](https://user-images.githubusercontent.com/73630337/103590112-5bacae00-4f30-11eb-889c-a7b59c70c3dd.gif)  

* 投稿の検索  
各市のページにある検索フォームにキーワードを入力することで、その文字列が含まれている投稿をすべて表示します。

* 投稿の詳細  
投稿されている画像をクリックしていただくと、その投稿の詳細ページへ繊維します。

![3c0ad0f1a1584f299e4f1c6ab5252fa1](https://user-images.githubusercontent.com/73630337/103590744-fe196100-4f31-11eb-8da1-fdb00d222954.gif)  

* 投稿の編集・削除  
ユーザー自身が投稿した画像であれば、詳細ページで編集と削除を行えます。   

* コメント  
ログインユーザーであれば、詳細ページからその投稿に対してコメントをする事ができます。  
ログインしていないユーザーはコメントすることはできませんが、見ることはできます。  
非同期通信にして、コミュニケーションをスムーズにできるようにする予定です。

![4cafe9d85a220f2ac3ce9e6c88bab1b5](https://user-images.githubusercontent.com/73630337/103750673-783d0900-504a-11eb-9604-18f1594fb563.gif)  


* ユーザーマイページ  
トップページや投稿詳細ページにあるユーザー名をクリックすると各ユーザーのマイページへ遷移します。  
ここではユーザーの情報と投稿した画像を確認することができます。

![6d0a5f708c220d51c1315b00777d4634](https://user-images.githubusercontent.com/73630337/103591343-3c635000-4f33-11eb-9000-c0c8c41446e2.gif)  

* ログアウト  
ヘッダーにある「ログアウト」をクリックしていただくとログアウト状態になります。

## 要件定義

### 要件定義を行うにあたって目指した課題解決

震災で跡形もなくなってしまった想い出の景色を見つけてもらうため。  
また、その景色(想い出)についてコミュニケーションも取れて新たな出会い、コミュニティも繋いでいきたい。  
投稿の場所を各市ごとにできるようにして、想い出の景色を投稿しやすく、見つけやすくすることを意識しました。

### サイト全体のデザイン
想い出を投稿してもらうアプリケーションなので、淡い、儚い感じを演出するためhoverの色を暖色系にして、文字なども透過させています。  
また投稿が多くなって深くスクロールすることになっても、すぐにトップページやマイページへ遷移できるようにヘッダーを固定しています。

### 投稿マップ
目的: 想い出の景色(画像)を各市町村ごとに投稿できるようするため。  
詳細: 宮城県の画像内にある市町村の文字座標を指定して要素作りリンクをつける。これにより、投稿する際と探す際に自分が求めている場所を特定しやすくする。

### ユーザー管理機能
目的: 投稿するのに必要な情報をDBに保存するため。また、サイトの安全性を高めるため。  
詳細: ヘッダーにリンクを設置する。新規登録では「ニックネーム・メールアドレス・パスワード・生年月日」の記入で登録可能。  
ログインは「メールアドレス・パスワード」を記入する。

### 画像投稿機能
目的: 自分の想い出の景色を各市町村のぺージへ投稿してもらうため。  
詳細: 投稿に必要な情報「画像・想い出のタイトル・想い出について」の3つは必須、「撮影日・町名・番地・建物名」は任意で記入する。

### 投稿詳細機能
目的: 投稿された想い出の詳細を確認するため。  
詳細: 各投稿の詳細ページにはコメント欄もあり、投稿に対してコメントを送ることができる。また、自身が投稿した画像は編集ボタンと削除ボタンが表示される。

### コメント機能
目的: 投稿された想い出にコメントを送ってコミュニケーションをとってもらうため。  
詳細: コメントすると、ユーザー情報も末尾に表示されるのでお互いの情報も確認できる。コメントをストレスなく円滑にできるよう非同期通信へとブラッシュアップする予定。

### 投稿の編集・削除機能
目的: 自身が投稿した画像の詳細を編集、投稿自体の削除ができるようにするため。  
詳細: 自身が投稿した画像の場合編集、削除を行える。

### 投稿検索機能
目的: 自分の求めている投稿を探しやすくするため。  
詳細: 探している投稿のキーワードを入力すると、その文字が含まれている投稿をすべて表示する。

### ユーザーマイページ機能
目的: 各ユーザーの情報と投稿画像が見れるようにするため。  
詳細: トップページ、詳細ページ、コメントにある、ユーザー名をクリックすると各ユーザーのマイページへ遷移できる。新規登録で入力した情報と今までに投稿した画像がみれる。

### 今後実装する予定の機能

### コメントの削除機能
目的: 間違って送信したコメントを削除できるようにするため。  
詳細: 自身が投稿したコメントに、削除ボタンが表示される。

### 投稿に対するコメントを可視化
目的: 投稿に対するコメントを、詳細ページにいかなくても可視化できるようにするため。  
詳細: 各市の投稿一覧画面で画像にhoverすると、その画像でやり取りされているコメントが流れてくる。

### 投稿マップの追加
目的: 宮城のみだけでなく、震災の被害にあった他県も同様に投稿をできるようにするため。  
詳細: 岩手、福島などの県マップで、市町村ごとに投稿できるようリンクを設定する。

### フォロー機能
目的: 相互フォローになると1対1のトークルームで会話できるようにするため。  
詳細: フレンドであれば、１対１のトークルームで投稿した想い出についてより深くコミュニケーションをとれる。


## データデース設計


### usersテーブル
| Column              | Type      | Options     |
| ------------------- | --------- | ----------- |
| nickname            | string    | null: false |
| email               | string    | null: false |
| encrypted_password  | string    | null: false |
| birthday            | date      | null: false |

#### Association

- has_many :posts
- has_many :comments

### postsテーブル

| Column         | Type            | Options                        |
| -------------- | --------------- | ------------------------------ |
| image          |                 | Active Storageで実装            |
| title          | string          | null: false                    |
| about          | text            | null: false                    |
| day            | date            |                                |
| town           | text            |                                |
| number         | text            |                                |
| building       | text            |                                |
| city_id        | integer         | null: false                    |
| user           | references      | null: false, foreign_key: true |

#### Association

- belongs_to : user
- has_many : comments

### commentsテーブル

| Column    | Type        | Options                         |
| --------- | ----------- | ------------------------------- |
| text      | text        | null: false                     |
| city_id   | integer     | null: false                     |
| user      | references  | null: false, foreign_key: true  |
| post      | references  | null: false, foreign_key: true  |

#### Association

- belongs_to :user
- belongs_to :post

### ER図

https://gyazo.com/1767669c32a2b94101586ddc6c8f3a09


