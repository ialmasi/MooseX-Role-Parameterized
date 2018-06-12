package ConcreteNestedClass;
use Moose;
with('NestedRole' => { some_param => 'from ConcreteNestedClass' });

1;
