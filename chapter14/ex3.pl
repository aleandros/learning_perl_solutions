#!/usr/bin/env perl
use 5.014;
use warnings;

my ($target, $short) = @ARGV;

my $idx = index $target, $short;
while ($idx >= 0) {
    say $idx;
    $idx = index($target, $short, $idx + 1);
}
