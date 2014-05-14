#!/usr/bin/env perl
use 5.014;
use warnings;

foreach (@ARGV) {
    when (-r) { say "$_ is readable"; continue }
    when (-w) { say "$_ is writeable"; continue }
    when (-x) { say "$_ is executable"; continue }
}
