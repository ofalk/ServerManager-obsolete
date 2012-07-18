use strict;
use warnings;
use utf8;

package SM::Controller::Lnxuser;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=Lnxuser --schema_name= --class_prefix=SM::Controller::Lnxuser --db_dsn=
{
    package SM::Controller::Lnxuser::LnxuserForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'Lnxuser' );

    has_field 'description' => ( type => 'Text', size => 45, );
    has_field 'homedir' => ( type => 'Text', size => 45, );
    has_field 'additional_groups' => ( type => 'Text', size => 45, );
    has_field 'gid' => ( type => 'Integer', );
    has_field 'name' => ( type => 'Text', size => 45, );
    has_field 'uid' => ( type => 'Integer', required => 1, );
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

sub base : Chained('/') PathPart('lnxuser') CaptureArgs(0) {}

1;

