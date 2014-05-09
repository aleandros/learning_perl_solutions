#!/usr/bin/env perl
use 5.014;
use warnings;

foreach (@ARGV) {
    my $results = join ', ', &check_attributes($_);
    $results =~ s/, (\w*\z)/ and $1/g;
    say "Attributes for $_: $results";
}

sub check_attributes {
    $_ = $_[0];
    my @attributes;
    push @attributes, 'readable' if -r;
    push @attributes, 'writeable' if -w;
    push @attributes, 'executable' if -x;
    push @attributes, 'non existent' unless -e;
    @attributes;
}
