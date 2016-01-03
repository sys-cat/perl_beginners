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

# 配列・ハッシュ（連想配列）
# 複数の要素を格納出来る箱
