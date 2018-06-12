package NestedRole;
use MooseX::Role::Parameterized;

parameter some_param => (
    is => 'ro',
    isa => 'Str',
    default => 'some value'
);

role {
    my $param = shift;

    has some_words => (
        is => 'ro',
        isa => 'Str',
        default => 'Hello'
    );

    method yell => sub {
        my $self = shift;

        print $self->some_words . " ". $param->some_param . "\n";
    }
};

1;
