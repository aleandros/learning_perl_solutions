#!/usr/bin/env perl
use 5.014;
use warnings;

my @files = glob '* .*';
foreach (@files) {
    unless (-d) {
        my ($atime, $ctime) = (stat)[8,9];
        printf "%-20s %-20s %-20s\n", $_, $atime, $ctime;
    }
}
