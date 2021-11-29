# 人間Cコンパイラコンテスト(HCCC)
人間Cコンパイラコンテスト(HCCC)とは文字通り競技者自身がCコンパイラとなり
C言語からアセンブリを生成し，その時間と正確さを競う競技です．

競技者にはコンパイラ技術の知識だけでなく
C言語の仕様やアセンブリ，多くのアーキテクチャに関する知識が要求されます．

## 評価基準
以下をスコアとして算出し順位をつける．

- 人力でコンパイルするまでの時間（提出までの時間）
- 提出ファイルの大きさ
- テストケースの正答率
- テストケースの実行速度
- コンパイルエラーの精度（与えられたコードが仕様として間違っているとき）

## 禁止事項
- 既存のコンパイラを使用すること
- コンパイラやツールを自作して使用すること
- 他者と回答を共有すること
- アセンブリ内に特定の回答を不正に埋め込む行為

## 競技の流れ
1. 作問者通知
1. 注意事項の連絡
1. C言語のソースコードを参加者に配布
1. 競技者がソースコードに応じてアセンブリを書いて提出
1. 提出されたアセンブリを実行ファイルにしてテストケースを走らせる   
1. 結果発表
1. 講評

## 問題のレパートリーの例
- ソースコードの正しさ（与えられたプログラムが間違っておりエラーを出す必要がある場合もある）
- ソースコードの長さ
- ソースコードの構文の複雑さ（構造体のアライメントや未定義動作など）
- 複数のアーキテクチャ(x86\_64, arm, risc-v, ppc, mips)

# link
[https://github.com/Alignof/Human\_C\_Compiler\_Contest](https://github.com/Alignof/Human_C_Compiler_Contest)

# Director
2021 11.21  
Takana Norimasa  
homepage: [https://alignof.github.io/](https://alignof.github.io/)  
github  : [https://github.com/Alignof/](https://github.com/Alignof/)  
Twitter : [https://twitter.com/\_Alignof](https://twitter.com/_Alignof)  
