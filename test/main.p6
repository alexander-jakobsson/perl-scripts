#!/usr/bin/perl6
use v6;

my $input = 0;
my $input-hex = 0;
my $last = 0;
my $total = 0;

until $input ~~ /q/ {
  $input = prompt "+ ";
  given $input {
    when /q/ {exit}
    when /ans/ {
      $input-hex = :16($last).base(10);
      $last = $input-hex;
      $total += $input-hex;
    }
    when /pi/ {
      $input-hex = "{pi}";
      $last = "{pi}";
      $total += $input-hex;
    }
    when /\d+|a|b|c|d|e|f/ {
      $input-hex = :16($_).base(10);
      $last = $input-hex;
      $total += $input-hex;
    }
    default {say ">> Please enter a valid hex number!"}
  }
  say "        = " ~ $total.base(16);
}




# Fin.
