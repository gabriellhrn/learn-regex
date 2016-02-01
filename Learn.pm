#!/usr/bin/perl

package Learn;

use strict;
use warnings;

sub lowercase {
    my $c = loadfile("Learn.txt");

    ##
    # write your code below
    ##

    $c;
}

sub loadfile {
    my $file = $_[0];
    open(my $fh, "<", $file);

    my $c;
    while(<$fh>) { $c .= $_; }

    $c;
}

1;

