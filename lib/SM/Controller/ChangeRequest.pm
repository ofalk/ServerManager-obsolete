use strict;
use warnings;
use utf8;

package SM::Controller::ChangeRequest;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=ChangeRequest --schema_name= --class_prefix=SM::Controller::ChangeRequest --db_dsn=
{
    package SM::Controller::ChangeRequest::ChangeRequestForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;

    use DateTime;


    has '+item_class' => ( default => 'ChangeRequest' );

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

sub base : Chained('/') PathPart('changerequest') CaptureArgs(0) {}

1;

