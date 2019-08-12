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

# feature/chap4

## commit "図4.3"

### 問題
Tripは、適切な旅行のそれぞれに対し、適切な自転車が利用可能かどうかを調べる責任を負うべきではない

Moe(Customerオブジェクト)が何を知らなければいけないか
- 旅行の一覧をがほしい
- suitable_tripsメッセージを実装するオブジェクトがある

## commit "図4.4"

### 問題
Tripから余計な責任は取り除いたものの、それをCostomerに移したに過ぎない
Moe自身が「何を」望むかだけではなく、ほかのオブジェクトが共同作業して「どのように」望むものを準備すかまで知っている

Moe(Customerオブジェクト)が何を知らなければいけないか
- 旅行の一覧をがほしい
- suitable_tripsメッセージを実装するオブジェクトがある
- 適切な旅行を見つけることには、適切な自転車を見るけることも含まれる
- suitable_bicycleメッセージを実装するほかのオブジェクトがある


## commit "図4.5"

### 問題
TripがMechanicが行うことについて、詳細をいくつも知っている
Tripはこの知識を自身で持ち、Mechanicに指示するために使っているので、Mechanicが新たに手順を加えたときにTripも変わらんければいけない。

## commit "図4.6"

### 対策
Tripは、MechanicにそれぞれのBicycleを準備するように頼み、実装の詳細はMechanicにまかせる
TripはMechanicがBicycleの準備をどういう風にするか知らなくなった

## commit "図4.7"

### コンテキストの独立を模索する

#### 問題
prepare_bicyclesメソッドはMechanicとのコンテキストを必要とするメソッド

#### 対策
依存オブジェクトの注入
