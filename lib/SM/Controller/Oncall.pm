use strict;
use warnings;
use utf8;

package SM::Controller::Oncall;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=Oncall --schema_name= --class_prefix=SM::Controller::Oncall --db_dsn=
{
    package SM::Controller::Oncall::OncallForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;

    use DateTime;


    has '+item_class' => ( default => 'Oncall' );

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

sub base : Chained('/') PathPart('oncall') CaptureArgs(0) {}

1;

