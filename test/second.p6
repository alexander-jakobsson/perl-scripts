#!/usr/bin/perl6
use v6;

sub MAIN(*@hex-numbers) {
	my @modified-numbers;
	for @hex-numbers -> $num {
		@modified-numbers.push: "0x$num";
	}	

	say ([+] @modified-numbers).base(16);;
}
