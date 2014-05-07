#!/usr/bin/env perl
use strict;
use warnings;

$^I = '.bak';

while (<>) {
    if (/\A#!/) {
        $_ .= "## Copyright (C) 2014 by Yours Truly\n";
    }
    print;
}
