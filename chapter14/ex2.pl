#!/usr/bin/env perl
use 5.014;
use warnings;

my %last_name = qw (
    fred flintstone
    Wilma Flintstone
    Barney Rubble
    betty Rubble
    Bamm-Bamm Rubble
    PEBBLES FLINTSTONE
);

say "$_ $last_name{$_}" foreach sort {
    "\L$last_name{$a}" cmp "\L$last_name{$b}" or
    "\L$a" cmp "\L$b"
} keys %last_name;
