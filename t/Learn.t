# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Learn.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More tests => 3;
use Digest::SHA;
use lib '../Learn.pm';

BEGIN { use_ok('Learn') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

is(Learn::lowercase(), Learn::loadfile("t/f/lowercased.txt"), "lowercased;");
is(Digest::SHA::sha256(Learn::lowercase()), Digest::SHA::sha256(Learn::loadfile("t/f/lowercased.txt")), "sha(lowercased);");

