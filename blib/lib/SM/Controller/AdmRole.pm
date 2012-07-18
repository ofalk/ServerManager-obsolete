use strict;
use warnings;
use utf8;

package SM::Controller::AdmRole;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=AdmRole --schema_name= --class_prefix=SM::Controller::AdmRole --db_dsn=
{
    package SM::Controller::AdmRole::AdmRoleForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'AdmRole' );

    has_field 'description' => ( type => 'TextArea', );
    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    # has_field 'adm_users' => ( type => '+SM::Controller::AdmRole::AdmUserField', );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::AdmRole::AdmUserField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'mail_address' => ( type => 'Text', size => 45, );
    has_field 'full_name' => ( type => 'Text', size => 50, required => 1, );
    has_field 'x_key' => ( type => 'Text', size => 45, );
    has_field 'adm_department' => ( type => 'Select', );
    has_field 'adm_role' => ( type => 'Select', );
    
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

sub base : Chained('/') PathPart('admrole') CaptureArgs(0) {}

1;

