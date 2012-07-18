use strict;
use warnings;
use utf8;

package SM::Controller::Lnxgroup;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=Lnxgroup --schema_name= --class_prefix=SM::Controller::Lnxgroup --db_dsn=
{
    package SM::Controller::Lnxgroup::LnxgroupForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'Lnxgroup' );

    has_field 'description' => ( type => 'Text', size => 45, );
    has_field 'name' => ( type => 'Text', size => 45, );
    has_field 'gid' => ( type => 'Integer', required => 1, );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}




__PACKAGE__->config(
    action => {
        list => { Chained => 'base', PathPart => q{list}, Args => 0 },
        view => { Chained => 'base' },
        edit => { Chained => 'base' },
        edit_ajax => { Chained => 'base' },
        destroy => { Chained => 'base' },
        destroy_multiple => { Chained => 'base' },
    },
);

sub base : Chained('/') PathPart('lnxgroup') CaptureArgs(0) {}

1;

