use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('CSS::Struct::Output::Indent::ANSIColor');
}

# Test.
require_ok('CSS::Struct::Output::Indent::ANSIColor');
