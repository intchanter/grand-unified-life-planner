#!/usr/bin/perl

open FILE, ">/var/www/html/WIP/test.json" or die $!; 
my $cgihttp = <>;
print FILE $cgihttp; 
my $jsonfile = <FILE>;
  if ($cgihttp == $jsonfile) {
    print "Content-type: text/plain", "\n";
    print "Status: 204 No Response", "\n\n";
  }
  else {

  }
close FILE;
