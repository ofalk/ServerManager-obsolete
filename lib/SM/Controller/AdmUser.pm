use strict;
use warnings;
use utf8;

package SM::Controller::AdmUser;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=AdmUser --schema_name= --class_prefix=SM::Controller::AdmUser --db_dsn=
{
    package SM::Controller::AdmUser::AdmUserForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;

    use DateTime;


    has '+item_class' => ( default => 'AdmUser' );

    has_field 'mail_address' => ( type => 'Text', size => 45, );
    has_field 'full_name' => ( type => 'Text', size => 50, required => 1, );
    has_field 'x_key' => ( type => 'Text', size => 45, );
    # has_field 'adm_user2groups' => ( type => '+SM::Controller::AdmUser::AdmUser2groupField', );
    has_field 'adm_department' => ( type => 'Select', );
    # has_field 'oncalls' => ( type => '+SM::Controller::AdmUser::OncallField', );
    has_field 'adm_role' => ( type => 'Select', );
    # has_field 'change_requests_approved_by_uid' => ( type => '+SM::Controller::AdmUser::ChangeRequestField', );
    # has_field 'change_requests_raised_by_uid' => ( type => '+SM::Controller::AdmUser::ChangeRequestField', );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::AdmUser::ChangeRequestField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'requested_by' => ( type => 'Text', size => 45, );
    has_field 'status' => ( type => 'Integer', required => 1, );
    has_field 'change_long' => ( type => 'TextArea', );
    has_field 'change_short' => ( type => 'Text', size => 45, required => 1, );
    has_field 'risks' => ( type => 'Text', size => 45, );
    has_field 'impact_on' => ( type => 'Text', size => 45, );
    has_field 'users_to_inform' => ( type => 'Text', size => 45, );
    has_field 'stop_time' => ( 
            type => 'Compound',
            apply => [
                {
                    transform => sub{ DateTime->new( $_[0] ) },
                    message => "Not a valid DateTime",
                }
            ],
        );
        has_field 'stop_time.year';        has_field 'stop_time.month';        has_field 'stop_time.day';
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
    has_field 'implemented_by' => ( type => 'Integer', required => 1, );
    has_field 'reason_for_change' => ( type => 'Text', size => 45, required => 1, );
    has_field 'raised_by_uid' => ( type => 'Select', );
    has_field 'approved_by_uid' => ( type => 'Select', );
    
    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::AdmUser::OncallField;
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


{
    package SM::Controller::AdmUser::AdmUser2groupField;
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

sub base : Chained('/') PathPart('admuser') CaptureArgs(0) {}

1;

