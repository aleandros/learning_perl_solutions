#!/usr/bin/env perl
## Copyright (C) 2014 by Yours Truly
use strict;
use warnings;

my $what = 'fred|barney';

while (<>) {
    if(/($what){3}/) {
        print "Matched $&\n";
    }
}
