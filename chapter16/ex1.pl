#!/usr/bin/env perl
use 5.014;
use warnings;

chdir '/usr/bin' or die 'Can not change to /usr/bin';
exec 'ls', '-l' or die 'Can not execute ls -l';
