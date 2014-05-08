#!/usr/bin/env perl
use 5.014;
use warnings;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };
say foreach (keys %modules);
