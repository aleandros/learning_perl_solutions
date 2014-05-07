#!/usr/bin/env perl
use strict;
use warnings;

foreach (<>) {
    if (/[A-Z][a-z]+/) {
        print;
    }
}
