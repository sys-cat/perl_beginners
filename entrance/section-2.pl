#! env perl
use strict;
use warnings;

use File::Spec;
use File::Basename 'dirname';

# スカラ変数
# 1つの要素しか入らない箱
# スカラ変数は先頭に `$` をつけて宣言する。宣言時は `my` をつけて行う（空の変数も作れる）
# Perlには型概念が無いので数値型と文字列型の区別無く代入出来る
my $hoge;
$hoge = 1;
my $foo;
$hoge = 'bar';

# 変数の出力
# print で出力出来る
# 変数を出力したい際はダブルクオーテーションで囲う改行なども同じ
print "$hoge\n"; # => 1
print '$hoge\n'; # => $hoge\n
print "\n";
# 練習問題：名前、身長体重をスカラ変数に入れてそれぞれを出力するスクリプトを作成する
my ($name, $age, $height) = qw(sys_cat 27 169);
print "Name: $name\nAge: $age\nHeight: $height\n";

# 標準入力
# <STDIN> で標準入力出来る
# chomp で行末の改行を削除する
my $str = <STDIN>;
chomp $str;
print "$str\n";

# 四則計算
# 基本的な演算子（四則演算）
$hoge = 4;
$foo = 2;
my $res;
$res = $hoge + $foo;
$res = $hoge - $foo;
$res = $hoge * $foo;
$res = $hoge / $foo;
$res = $hoge % $foo;
$res = $hoge ** $foo;

# 基本的な演算子（文字列連結）
$foo = 'hoge';
my $bar = 123;
my $baz = $foo.$bar;
print $foo . $baz . "\n";

## 演算の順番
$hoge = 2 + 4 * 3;
my $fuga = (2 + 4) * 3;

# 練習問題：標準入力から変数2つ読み込んで四則計算した結果を出力する
print "Number a :";
my $num1 = <STDIN>;
print "Number b :";
my $num2 = <STDIN>;
my $num3 = $num1 % $num2;
printf "a + b = %i\n", int($num1 + $num2);
printf "a - b = %i\n", int($num1 - $num2);
printf "a * b = %i\n", int($num1 * $num2);
printf "a / b = %i\n", int($num1 / $num2);
#printf "a \% b = %i\n", int($num1 % $num2);
print "a % b = $num3\n";
printf "a ** b = %i\n", int($num1 ** $num2);

# if, else文
# 制御構文（if）
my $if_hoge = 1;
if ($if_hoge == 1) {
  print "OK\n";
} else {
  print "NG\n";
}
# == は右辺と左辺が等しければ”真”であることを意味する。
# 真：条件が正しい、偽：条件が正しくない
# else 以下は省略出来る。が、偽の場合の処理は行われない
# 数値の比較演算子
## == 右辺と左辺が等しいならば真
## != 右辺と左辺が等しくないならば真
## < 右辺より左辺が小さいならば真
## > 右辺より左辺が大きいならば真
## <= 右辺が左辺以上ならば真
## >= 右辺が左辺以下ならば真
# 文字列の比較演算子
## eq == equal
## ne != not equal
## gt > greater than
## ge >= greater equal
## lt < less than
## le <= less equal

my $if_str_hoge = 'hello';
if ($if_str_hoge eq 'hello') {
  print "OK\n";
} else {
  print "NG\n";
}

# if('42strings' eq 42) みたいな条件式の場合、use warnings をしていると警告は出るが処理は続行される。
# また、文字列の先頭に42があるため真であるとして処理も行われる。
# 逆に if('42' eq 42) みたいな場合はPerlにそもそもの型概念が無いため警告無く処理が進む

# Perlにおける真偽値
# PerlにはTrueやFalseにあげられる真偽値というものが存在しない。しかし以下の5つの値が「偽」の値として扱われる
## 数値「0」
## 文字列 「'0'」と「''」
## 空のリスト「()」
## undef

# 配列・ハッシュ（連想配列）
# 複数の要素を格納出来る箱
