#!/usr/bin/env perl
use 5.014;
use warnings;

my %names = (
    fred => 'flintstone',
    barney => 'rubble',
    wilma => 'flintstone'
);

chomp(my $name = <STDIN>);
say $names{$name};
