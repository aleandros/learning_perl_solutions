#!/usr/bin/env perl
use 5.014;
use warnings;

foreach (@ARGV) {
    say if -r -w -O;
}
