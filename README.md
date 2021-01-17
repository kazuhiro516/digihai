![logo](https://user-images.githubusercontent.com/64354488/104673770-bd85c880-5725-11eb-8273-1bf5aa108cd3.png)

# DIGIHAI

DIGIHAIは、配達員の評価が一目でわかるレビューアプリです。<br>
宅配サービスの品質を高水準に保ち、マナークレームを少しでも抑えることを目的としています。

## アプリURL
https://digihai.herokuapp.com/

# 概要
登録された配達員のレビューを閲覧したり、レビューを投稿できます。<br>
また、求人情報を投稿し、仕事を募集することも可能です。<br>
発注者は、評価が高く、優秀な配達員をすぐに発見できるメリットがあり、配達員は評価が高ければ仕事を受注しやすくなります。<br>
発注者、配達員相互にメリットがある仕組みを採用しました。

# 実装機能
主たる機能は下記の2つです。<br>
 * レビュー機能
 * 記事投稿機能 <br>

詳しい機能は下記のとおりです。
 ## レビュー機能側
登録している配達員の評価の閲覧、レビューを投稿できます。<br>
* レビュー(配達員)一覧機能
* レビュー(発注者)一覧機能
* レビュー投稿機能
* レビュー詳細機能
* ページネーション機能
 ## 記事投稿側
発注者が仕事を募集できます。
* 記事一覧機能
* 記事詳細機能
* 記事投稿機能
* 記事削除機能
* ページネーション機能
* いいね機能(Ajaxを使用)
 ## ユーザー（発注者）登録機能
 deviseを使用した認証機能です。
* 新規登録機能
* ログイン機能
* ユーザー詳細機能
* ユーザー編集機能
* ページネーション機能

# 開発環境
### 言語
* Ruby version 2.7.2

* JavaScript

* Jquery

### フレームワーク
* Ruby on Rails version 6.1.0

* Bootstrap version 5.0.0.alpha3

### ミドルウェア

* Docker
* Docker-compose

### データベース
* Postgresql

### インフラ
* Heroku

### バージョン管理
* Git
* Github

### ツール
* Googleアナリティクス

# 文責
黒川 和弘
# ライセンス
MIT License

Copyright (c) 2021 kazuhiro516

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
