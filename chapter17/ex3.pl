#!/usr/bin/env perl
use 5.014;
use warnings;

my @files = glob '* .*';
foreach (@files) {
    unless (-d) {
        my ($atime, $ctime) = map {
            my ($year, $month, $day) = (localtime $_)[5, 4, 3];
            $year += 1900;
            $day += 1;
            sprintf "%4d-%02d-%02d", $year, $month, $day;
        } (stat)[8,9];
        printf "%-20s %-20s %-20s\n", $_, $atime, $ctime;
    }
}

