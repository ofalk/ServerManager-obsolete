use strict;
use warnings;
use utf8;

package SM::Controller::CatCpuType;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=CatCpuType --schema_name= --class_prefix=SM::Controller::CatCpuType --db_dsn=
{
    package SM::Controller::CatCpuType::CatCpuTypeForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'CatCpuType' );

    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    # has_field 'cat_server_models' => ( type => '+SM::Controller::CatCpuType::CatServerModelField', );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::CatCpuType::CatServerModelField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'cpu_sockets' => ( type => 'Integer', );
    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    has_field 'cat_vendor' => ( type => 'Select', );
    has_field 'cat_cpu_type' => ( type => 'Select', );
    
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

sub base : Chained('/') PathPart('catcputype') CaptureArgs(0) {}

1;

