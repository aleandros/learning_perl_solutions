#!/usr/bin/env perl
use 5.014;
use warnings;

print "Enter a directory:\n> ";
chomp (my $dir = <STDIN>);
if ($dir =~ /\A\s*\Z/) {
    chdir;
    &list_contents;
} elsif (-e -d $dir) {
    chdir $dir;
    &list_contents;
} else {
    die "$dir not found";
}

sub list_contents {
    opendir my $dir_handle, '.'
        or die "Cannot open directory: $!";
    my @files = readdir $dir_handle;
    say foreach (sort @files);
}
