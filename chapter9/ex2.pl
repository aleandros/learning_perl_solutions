#!/usr/bin/env perl
## Copyright (C) 2014 by Yours Truly
use strict;
use warnings;

my $original = shift @ARGV;
open ORIGINAL, '<', $original;
open COPY, '>', "$original.out";

while (<ORIGINAL>) {
    s/fred/Larry/ig;
    print COPY;
}
