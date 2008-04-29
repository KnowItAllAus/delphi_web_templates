#! /usr/bin/perl -w
use strict;
my $vers = '$HeadURL$';
my $y = '$LastChangedDate$';
if ($vers=~m!/trunk/!) {
  print "WARNING: you are using an inofficial snapshot!\n";
} elsif ($vers=~m!/branches/([^/]+)!) {
  print "WARNING: Do you really want to be on HEAD of $1?\n";
} elsif ($vers=~m!/releases/([^/]+)!) {
  print "You use official version $1, that's OK!\n";
} elsif ($vers=~m!/tags/([^/]+)!) {
  print "You use version $1, that's OK!\n";
}
