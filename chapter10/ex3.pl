#!/usr/bin/env perl
use 5.014;
use warnings;

my $max_len_k = 0;
my $max_len_v = 0;
foreach (sort keys %ENV) {
    if (length $_ > $max_len_k) {
        $max_len_k = length $_;
    }
    if (length $ENV{$_} > $max_len_v) {
        $max_len_v = length $ENV{$_};
    }
}

while ((my $key, my $value) = each %ENV) {
    printf "%-${max_len_k}s  %-${max_len_v}s\n", $key, ($value or 'undefined value');
}
