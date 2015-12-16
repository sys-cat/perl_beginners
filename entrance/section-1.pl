#! env perl
use strict;
use warnings;

use File::Spec;
use File::Basename 'dirname';

# 特殊定数の場合はこうなる
printf "FILE -> %s\n", __FILE__;

# File::Specを利用してカレントディレクトリを取得するときはこうする
my $basedir = File::Spec->catdir(dirname(__FILE__));
printf "basedir -> %s\n", $basedir;

# File::Specを利用してファイルのパスを取得する
my $file = File::Spec->catfile($basedir, "me.txt");
printf "file -> %s\n", $file;

# open 関数の書き方は3つの引数を利用するのがモダンな書き方2つだとパイプしてからShellを走らせる事が出来てしまうため。
#open(FILE, '<', '/Users/sasakimakoto/Develop/sys_cat/perl_beginners/entrance/me.txt') or die "$!";
open my $fh, '<', $file or die $!;
for my $line (<$fh>) {
    print $line;
}
close($fh);