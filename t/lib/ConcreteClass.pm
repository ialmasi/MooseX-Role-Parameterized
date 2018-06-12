package ConcreteClass;
use Moose;
with('Role' => { class => 'ConcreteNestedClass' });

1;
