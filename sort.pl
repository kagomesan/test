#!/usr/bin/perl

use strict;
use warnings;

our @str;

while(<*.csv>){
	open(IN,$_);
	while(<IN>){
	chomp($_);
	my @item = split ( /,/,$_);
	push @str, [$item[0],$item[1]];
	}
}

@str = sort{$a->[0] cmp $b->[0]} @str;

foreach my $ref (@str) {
  print "@$ref\n";
}

