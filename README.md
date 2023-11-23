# 入力した数字まで足したり,引いたり、かけたり、二乗したものを足したりするプログラム


# plusコマンド
[![test](https://github.com/yuukitsubouchi/robosys202x/actions/workflows/test.yml/badge.svg)](https://github.com/yuukitsubouchi/robosys202x/actions/workflows/test.yml)



標準入力から読み込んだ数字を足す。
標準入力から読み込んだ数字を引く。
標準入力から読み込んだ数字をかける。
標準入力から読み込んだ数字を二乗してから足す。


## インストール方法  
* 必要なソフトウェアで、このリポジトリのURLからインストールする。
```bash
git clone https://github.com/yuukitsubouchi/robosys202x.git
```
 
## 実行方法
* インストールしたプログラムのあるファイルに移動して
```bash
cd robosys202x
```
以下のように実行する
```bash 
seq 数字 | ./plus
```

## 必要なソフトウェア
* Python
  * テスト済み(test.bash)：　3.7~3.10

## テスト環境
* Ubuntu20.04

## ライセンス
* このソフトウェアパッケージは、３条項BSDライセンスの下、再頒布および使用が許可されます。
* このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuici Ueda)のものを本人の許可を得て自身の著作としたものです。
* © 2023 Yuuki Tsubouchi
