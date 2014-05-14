#!/usr/bin/env perl
use 5.014;
use warnings;

my $number = shift @ARGV;
given ($number) {
    when (!($_ % 3)) { say 'Fizz'; continue }
    when (!($_ % 5)) { say 'Bin'; continue }
    when (!($_ % 7)) { say 'Sausage'; }
    default { }
}
