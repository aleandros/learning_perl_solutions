#!/usr/bin/env perl
## Copyright (C) 2014 by Yours Truly
use strict;
use warnings;

my $original = shift @ARGV;
open ORIGINAL, '<', $original;
open COPY, '>', "$original.out";

while (<ORIGINAL>) {
    chomp;
    s/fred/\n/gi;
    s/wilma/Fred/gi;
    s/\n/Wilma/gi;
    print COPY "$_\n";
}
