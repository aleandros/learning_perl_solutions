#!/usr/bin/env perl
use warnings;

print "Enter a string\n> ";
$str = <STDIN>;
print "Enter a number:\n> ";
chomp($n = <STDIN>);
print $str x $n;
