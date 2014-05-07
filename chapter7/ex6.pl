#!/usr/bin/env perl
use strict;
use warnings;

foreach (<>) {
    if (/wilma/ and /fred/) {
        print;
    }
}
