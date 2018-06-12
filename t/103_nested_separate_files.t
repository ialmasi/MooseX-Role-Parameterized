use strict;
use warnings;

use Test::More 0.88;

use lib 't/lib';

# use_ok('ConcreteClass');
use_ok('ConcreteNestedClass');

my $concrete_class_roles = ConcreteNestedClass->meta->roles;

use Data::Dumper; warn Dumper($concrete_class_roles);

done_testing();
