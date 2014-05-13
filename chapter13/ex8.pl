#!/usr/bin/env perl
use 5.014;
use warnings;

opendir my $dir, '.' or die "Error opening current directory: $!";
foreach (readdir $dir) {
    my $l_pointer = readlink $_;
    say "$_ -> $l_pointer" if -l;
}
