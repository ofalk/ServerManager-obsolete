use strict;
use warnings;
use utf8;

package SM::Controller::CatStorageModel;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=CatStorageModel --schema_name= --class_prefix=SM::Controller::CatStorageModel --db_dsn=
{
    package SM::Controller::CatStorageModel::CatStorageModelForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'CatStorageModel' );

    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    # has_field 'storages' => ( type => '+SM::Controller::CatStorageModel::StorageField', );
    has_field 'cat_vendor' => ( type => 'Select', );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::CatStorageModel::StorageField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    has_field 'cat_storage_model' => ( type => 'Select', );
    has_field 'cat_location' => ( type => 'Select', );
    has_field 'cat_site' => ( type => 'Select', );
    
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

sub base : Chained('/') PathPart('catstoragemodel') CaptureArgs(0) {}

1;

