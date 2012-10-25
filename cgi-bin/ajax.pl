#!/usr/bin/perl
my $cgihttp = <>;

sub writer {
open WFILE, ">/var/www/WIP/test.json" or die $!; 
print WFILE $cgihttp;
close WFILE;
}

sub reader {
open RFILE, "</var/www/WIP/test.json" or die $!;
$jsonfile = <RFILE>;
close RFILE;
}

sub httpheader {
	if ($cgihttp == $jsonfile) {
		print "Content-type: text/plain\n";
		print "Status: 204 No Response\n\n";
	}
	else {
                print "Content-type: text/plain\n";
                print "Status: 204 No Response\n\n";
	}
}

writer();
reader();
httpheader();

until ($cgihttp == $jsonfile) {
writer();
reader();
}

httpheader();
