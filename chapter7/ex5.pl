#!/usr/bin/env perl
use strict;
use warnings;

foreach (<>) {
    if (/([\S])\g{-1}/) {
        print;
    }
}
