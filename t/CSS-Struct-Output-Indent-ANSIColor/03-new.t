use strict;
use warnings;

use English qw(-no_match_vars);
use Error::Pure::Utils qw(clean);
use CSS::Struct::Output::Indent::ANSIColor;
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
eval {
	CSS::Struct::Output::Indent::ANSIColor->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n", "Unknown parameter ''.");
clean();

# Test.
eval {
	CSS::Struct::Output::Indent::ANSIColor->new('something' => 'value');
};
is($EVAL_ERROR, "Unknown parameter 'something'.\n",
	"Unknown parameter 'something'.");
clean();

# Test.
eval {
	CSS::Struct::Output::Indent::ANSIColor->new('output_handler' => '');
};
is($EVAL_ERROR, 'Output handler is bad file handler.'."\n",
	'Output handler is bad file handler.');
clean();

# Test.
my $obj = CSS::Struct::Output::Indent::ANSIColor->new;
isa_ok($obj, 'CSS::Struct::Output::Indent::ANSIColor');
