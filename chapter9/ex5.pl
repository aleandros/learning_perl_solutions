#!/usr/bin/env perl
use strict;
use warnings;

my %to_modify;
foreach (@ARGV) {
    $to_modify{$_} = 1;
}

while (<>) {
    if (/\A## Copyright/) {
        delete $to_modify{$ARGV};
    }
}

@ARGV = sort keys %to_modify;
$^I = '.bak';
while (<>) {
    if (/\A#!/) {
        $_ .= "## Copyright (C) 2014 by Yours Truly\n";
    }
    print;
}
