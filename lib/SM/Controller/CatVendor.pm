use strict;
use warnings;
use utf8;

package SM::Controller::CatVendor;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=CatVendor --schema_name= --class_prefix=SM::Controller::CatVendor --db_dsn=
{
    package SM::Controller::CatVendor::CatVendorForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'CatVendor' );

    has_field 'contact_phone' => ( type => 'Text', size => 45, );
    has_field 'contact_person' => ( type => 'Text', size => 45, );
    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    # has_field 'cat_server_models' => ( type => '+SM::Controller::CatVendor::CatServerModelField', );
    # has_field 'cat_storage_models' => ( type => '+SM::Controller::CatVendor::CatStorageModelField', );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::CatVendor::CatServerModelField;
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


{
    package SM::Controller::CatVendor::CatStorageModelField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    has_field 'cat_vendor' => ( type => 'Select', );
    
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

sub base : Chained('/') PathPart('catvendor') CaptureArgs(0) {}

1;

