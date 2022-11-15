# 人間Cコンパイラコンテスト(Human C Compiler Contest / HCCC)
人間Cコンパイラコンテスト(HCCC)とは文字通り競技者自身がCコンパイラとなり
C言語からアセンブリを生成し，その時間と正確さを競う競技です．  
与えられるソースコードの中にはコンパイルエラーを出す必要の
ある仕様上間違ったものも含まれています．  
このような場合にはコンパイルエラーとしてアセンブリの生成を拒否する必要があります．

つまり，競技者にはC言語の仕様の知識とアセンブリ，ABIの仕様の知識などの低レイヤの力が求められます．
逆に言えば，競技を通してこれらの力が付くとも言えます．
豊富なチュートリアルを用意する予定なのでこれから低レイヤの領域に触れようという方も是非チャレンジしてほしいなと思います．

## お知らせ
第1回となる大会を11月19日に行われるSECCONのイベント，SECCONCONで開催します．
詳しくは以下のリンクをご覧ください．
[https://www.seccon.jp/2022/seccon_contest/secconcon.html](https://www.seccon.jp/2022/seccon_contest/secconcon.html)

## チュートリアル
開催の1週間前までには準備する予定です（頑張ります）．

## 競技規則
第1回大会では問題の表示や提出を行う競技サーバと手元でデバッグするための検証環境を用意して以下のような規則で実施する．

### A. 競技概要
1. 本コンテストは与えられたC言語のソースコードを決められた仕様に沿って解釈し対象となるアーキテクチャのアセンブリを出力する競技である．
1. 競技者は，与えられたソースコードが仕様上正しければ（コンパイル可能なら）アセンブリに変換し，ソースコードが仕様上正しくなければ（コンパイルエラーを出すべきなら）変換を行わずコンパイル不可であることを示す．
1. 第1回大会では以下の仕様を基準に競技を行う．
    1. C言語の仕様はC99に則る[^C99]．
    1. ABIの仕様はSystem V Application Binary Interfaceの仕様に従う[^ABI]．
    1. 対象アーキテクチャはx86\_64とする．
    1. 記法はAT&Tとintel記法の双方を許可する．
1. 第1回大会では評価基準を以下のように定める．
    1. 各問題に点数を与えその得点で評価を行う．
    1. 得点が同じ場合は最後に正答した回答を提出した順番で順位づけを行う．
    1. 誤答した場合は最終得点から誤答の数に応じて減点する（1回に対して1点減点）．減点はACした問題にのみ適用される（マイナスの得点にはならない）．
    1. 誤答のうちコンパイルできるはずのものにコンパイルエラーを出した場合，以後は提出が不可能となる．

### B. 競技システム
1. 回答が正しいかどうかはジャッジシステムで行う．ジャッジシステムはテストケースを与えたり問題につけられた制約を確認する．
1. 誤答した場合ジャッジシステムは以下のいずれかの結果を返す．
    - AC: 正答．
    - WA: テストケースの出力が正しくない．
    - WC: 正しいプログラムにコンパイルエラーを出した．
    - AE: アセンブラのエラー．
    - LE: リンカのエラー．
    - RE: 実行時のエラー．
    - TLE: 制限時間オーバー．
    - Pending: ジャッジ待ち．
    - SystemError: 上記以外のエラー．運営によるリジャッジが行われる可能性がある．
1. 実行の制限時間は2000msとする．

[^C99]:[https://www.open-std.org/JTC1/SC22/WG14/www/docs/n1256.pdf](https://www.open-std.org/JTC1/SC22/WG14/www/docs/n1256.pdf)
[^ABI]:[https://uclibc.org/docs/psABI-x86_64.pdf](https://uclibc.org/docs/psABI-x86_64.pdf)

### C. 許可事項
競技者は特に以下のことを許可される．
1. 紙，鉛筆，電卓などを用いること．
1. 指定された仕様書の閲覧．
1. 指定された検証環境を使ってローカルでデバッグを行う．
1. 検証環境内でのgdbの使用．
1. 人間による恣意的な最適化[^1]．

[^1]: 一部の問題では明示的に許可されない場合がある．

### D. 禁止事項
競技者は特に以下のことを禁止される．
1. 既存のコンパイラを使用すること．
1. その他既存のツールを使用すること．
1. コンパイラやツールを自作して使用すること．
1. 他者と回答を共有すること．
1. 回答にジャッジサーバを攻撃するような処理を埋め込むこと．

## 当日の流れ
1. 競技サーバへの登録と検証環境の配布
1. 注意事項の連絡
1. 競技開始
1. 競技（と並行して裏番組で初心者向け講座の実施）
1. 競技終了
1. 結果発表
1. 解説

## Director
2022 11.16  
Norimasa TAKANA  
github: [https://github.com/Alignof/](https://github.com/Alignof/)  
Twitter: [https://twitter.com/\_Alignof](https://twitter.com/_Alignof)  
