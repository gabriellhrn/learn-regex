
use strict;
use warnings;

use Test::More;
use lib '../Learn.pm';

BEGIN { use_ok('Learn') };

my $tr = $ARGV[0];

my $c = Learn::loadfile("Learn.txt");

if (not $tr or $tr eq "printid") {
    is(Learn::printid($c), Learn::loadfile("t/f/printid.txt"), "printid;");
}

if (not $tr or $tr eq "fixtype") {
    is(Learn::fixtype($c), Learn::loadfile("t/f/fixtype.txt"), "fixtype;");
}

if (not $tr or $tr eq "printage") {
    is(Learn::printage($c), Learn::loadfile("t/f/printage.txt"), "printage;");
}

if (not $tr or $tr eq "updatepass") {
    is(Learn::updatepass($c), Learn::loadfile("t/f/updatepass.txt"), "updatepass;");
}

if (not $tr or $tr eq "sendemail") {
    is(Learn::sendemail($c), Learn::loadfile("t/f/sendemail.txt"), "sendemail;");
}

done_testing();

