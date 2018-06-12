package Role;
use MooseX::Role::Parameterized;
use Class::Load qw(load_class);

parameter class => (
    is => 'ro',
    isa => 'Str',
    required => 1
);

role {
    my $params = shift;

    # load_class( $params->class );

    has some_attr => (
        is => 'ro',
        isa => 'Str',
        default => 'Hello'
    );

    method say_something => sub {
        my $nested_object = initialize_concrete_nested_object($params->class, { some_words => 'Greetings' });
        $nested_object->yell();
    }
};

sub initialize_concrete_nested_object {
    my ($package, $input) = @_;

    return $package->new($input);
}

1;
