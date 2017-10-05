#!/usr/bin/perl6
use v6;


my $time;
my $fractional-time;
while True {
	$time = DateTime.now;
	$fractional-time = ($time.hour / 24 + $time.minute / 1440 + $time.second / 86400).base(16);
	say $fractional-time;
}





#Fin.
