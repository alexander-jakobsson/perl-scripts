#!/usr/bin/perl6
use v6;

sub store {
	my @numbers;
	my $entry = 0;
	until $entry ~~ /q/ {
		$entry = ($*IN.get);
		if $entry ~~ /q/ {exit}
		@numbers.push: "0x$entry";
		say "Sum: " ~ ([+] @numbers).Num.base(16);
	}
}

sub MAIN(*@hex-numbers) {
	my @modified-numbers;
	for @hex-numbers -> $num {
		@modified-numbers.push: "0x$num";
	}	

	say ([+] @modified-numbers).base(16);
	store;
}
