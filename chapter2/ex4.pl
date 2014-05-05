#!/usr/bin/env perl
use warnings;

print "Enter a number:\n> ";
chomp($a = <STDIN>);
print "Enter another number:\n> ";
chomp($b = <STDIN>);
print 'The multiplication is: ' . $a * $b . "\n";
