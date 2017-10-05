#!/usr/bin/perl6
use v6;

my $total = 0;
my $input = 0;


sub parse-hex-set($input is rw) {
	$input ~~ s:g/X|x/A/;
	$input ~~ s:g/E|e/B/;
	$input ~~ s:g/W|w/D/;
	$input ~~ s:g/U|u/E/;

	$input
}

sub 

sub add-em($x) {
	my $y = $x.parse-base(16);
	$total += $y
}

until $input ~~ /q|exit/ {
	$input = prompt "+ ";
	parse-hex-set $input;
	add-em $input unless $input ~~ /q|exit/;

	say $total;
}




# Get user input.
# Check that it is in the correct format.
# If input matches /q/, quit.
# Replace non-standard hex with standard hex.
# Add now standard hex input to a running total. 
# Convert total to non-standard hex. 
# Display total. 
# Repeat. 











