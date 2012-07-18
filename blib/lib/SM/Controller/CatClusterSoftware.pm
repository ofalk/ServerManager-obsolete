use strict;
use warnings;
use utf8;

package SM::Controller::CatClusterSoftware;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=CatClusterSoftware --schema_name= --class_prefix=SM::Controller::CatClusterSoftware --db_dsn=
{
    package SM::Controller::CatClusterSoftware::CatClusterSoftwareForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;


    has '+item_class' => ( default => 'CatClusterSoftware' );

    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    # has_field 'clusters' => ( type => '+SM::Controller::CatClusterSoftware::ClusterField', );
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::CatClusterSoftware::ClusterField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    has_field 'description' => ( type => 'Text', size => 45, );
    has_field 'software_version' => ( type => 'Text', size => 45, );
    has_field 'cat_cluster_software' => ( type => 'Select', );
    
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

sub base : Chained('/') PathPart('catclustersoftware') CaptureArgs(0) {}

1;

