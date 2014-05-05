#!/usr/bin/env perl
use warnings;

print "Please enter a radius:\n> ";
chomp($r = <STDIN>);
print $r * 2 * 3.141592654 . "\n";
