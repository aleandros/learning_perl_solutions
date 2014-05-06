#!/usr/bin/env perl
use 5.014;
use warnings;

my %names;
foreach (<STDIN>) {
    chomp;
    $names{$_} += 1;
}

foreach (sort keys %names) {
    say "$_ was seen $names{$_} times";
}
