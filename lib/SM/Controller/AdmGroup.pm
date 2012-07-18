use strict;
use warnings;
use utf8;

package SM::Controller::AdmGroup;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=AdmGroup --schema_name= --class_prefix=SM::Controller::AdmGroup --db_dsn=
{
    package SM::Controller::AdmGroup::AdmGroupForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'AdmGroup' );

    has_field 'description' => ( type => 'Text', size => 45, );
    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    # has_field 'adm_user2groups' => ( type => '+SM::Controller::AdmGroup::AdmUser2groupField', );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::AdmGroup::AdmUser2groupField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'group' => ( type => 'Select', );
    has_field 'user' => ( type => 'Select', );
    
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

sub base : Chained('/') PathPart('admgroup') CaptureArgs(0) {}

1;

