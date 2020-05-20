#!/usr/bin/perl

use strict;
use warnings;

our @list;

while(<*.csv>){
	open(IN,$_);
	@list = <IN>;
	close(IN);
}

@list = sort { (split(/\,/,$a))[0] cmp (split(/\,/,$b))[0] } @list;

for (my $i=0 ; $i<=$#list ; $i++){
	print "$list[$i]" ;
}
