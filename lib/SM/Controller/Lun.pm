use strict;
use warnings;
use utf8;

package SM::Controller::Lun;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=Lun --schema_name= --class_prefix=SM::Controller::Lun --db_dsn=
{
    package SM::Controller::Lun::LunForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'Lun' );

    has_field 'volume_group' => ( type => 'Text', size => 45, );
    has_field 'description' => ( type => 'TextArea', );
    has_field 'size_in_gb' => ( type => 'Integer', required => 1, );
    has_field 'mirrored_on_storage' => ( type => 'Text', required => 1, );
    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    has_field 'cluster_package' => ( type => 'Select', );
    has_field 'server' => ( type => 'Select', );
    has_field 'cat_os_category' => ( type => 'Select', );
    has_field 'storage' => ( type => 'Select', );
    has_field 'cat_product_category' => ( type => 'Select', );
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

sub base : Chained('/') PathPart('lun') CaptureArgs(0) {}

1;

