use strict;
use warnings;
use utf8;

package SM::Controller::AdmDepartment;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=AdmDepartment --schema_name= --class_prefix=SM::Controller::AdmDepartment --db_dsn=
{
    package SM::Controller::AdmDepartment::AdmDepartmentForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;

    use DateTime;


    has '+item_class' => ( default => 'AdmDepartment' );

    has_field 'description' => ( type => 'Text', size => 45, );
    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    # has_field 'adm_users' => ( type => '+SM::Controller::AdmDepartment::AdmUserField', );
    # has_field 'oncalls' => ( type => '+SM::Controller::AdmDepartment::OncallField', );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::AdmDepartment::AdmUserField;
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


{
    package SM::Controller::AdmDepartment::OncallField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'problem_details' => ( type => 'TextArea', );
    has_field 'stop_date' => ( 
            type => 'Compound',
            apply => [
                {
                    transform => sub{ DateTime->new( $_[0] ) },
                    message => "Not a valid DateTime",
                }
            ],
        );
        has_field 'stop_date.year';        has_field 'stop_date.month';        has_field 'stop_date.day';
    has_field 'start_date' => ( 
            type => 'Compound',
            apply => [
                {
                    transform => sub{ DateTime->new( $_[0] ) },
                    message => "Not a valid DateTime",
                }
            ],
        );
        has_field 'start_date.year';        has_field 'start_date.month';        has_field 'start_date.day';
    has_field 'problem_description' => ( type => 'TextArea', required => 1, );
    has_field 'adm_department' => ( type => 'Select', );
    has_field 'adm_user' => ( type => 'Select', );
    
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

sub base : Chained('/') PathPart('admdepartment') CaptureArgs(0) {}

1;

