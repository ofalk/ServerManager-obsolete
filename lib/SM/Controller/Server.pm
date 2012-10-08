use strict;
use warnings;
use utf8;

package SM::Controller::Server;

use base "Catalyst::Example::Controller::InstantCRUDStylish";


# Generated automatically with HTML::FormHandler::Generator::DBIC
# Using following commandline:
# form_generator.pl --rs_name=Server --schema_name= --class_prefix=SM::Controller::Server --db_dsn=
{
    package SM::Controller::Server::ServerForm;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Model::DBIC';
    use namespace::autoclean;

    use DateTime;


    has '+item_class' => ( default => 'Server' );

    has_field 'license' => ( type => 'Text', size => 17, );
    has_field 'license_end' => ( 
            type => 'Compound',
            apply => [
                {
                    transform => sub{ DateTime->new( $_[0] ) },
                    message => "Not a valid DateTime",
                }
            ],
        );
        has_field 'license_end.year';        has_field 'license_end.month';        has_field 'license_end.day';
    has_field 'tags' => ( type => 'TextArea', );
    has_field 'asset_id' => ( type => 'Text', size => 45, );
    has_field 'patch_notes' => ( type => 'TextArea', );
    has_field 'reboot_notes' => ( type => 'TextArea', );
    has_field 'autodiscovery' => ( type => 'Text', );
    has_field 'iscsi_attached' => ( type => 'Text', );
    has_field 'description' => ( type => 'Text', size => 45, maxlength => 128, label => "Description");
    has_field 'maintenance_end' => ( 
            type => 'Compound',
            apply => [
                {
                    transform => sub{ DateTime->new( $_[0] ) },
                    message => "Not a valid DateTime",
                }
            ],
        );
        has_field 'maintenance_end.year';        has_field 'maintenance_end.month';        has_field 'maintenance_end.day';
    has_field 'fc_attached' => ( type => 'Text', );
    has_field 'serial_nr' => ( type => 'Text', size => 45, );
    has_field 'delivery_note_id' => ( type => 'Text', size => 45, );
    has_field 'management_hostname' => ( type => 'Text', size => 45, );
    has_field 'management_ip' => ( type => 'Text', size => 45, );
    has_field 'additional_ip' => ( type => 'TextArea', cols => "18", rows => "4", style => "addtional_ip");
    has_field 'default_gateway' => ( type => 'Text', size => 45, );
    has_field 'subnet_mask' => ( type => 'Text', size => 45, );
    has_field 'ip_address' => ( type => 'Text', size => 45, );
    has_field 'rack' => ( type => 'Text', size => 45, );
    has_field 'application' => ( type => 'Text', size => 64, maxlength => 256);
    has_field 'cpu_speed' => ( type => 'Integer', label => 'CPU Speed (GHz)');
    has_field 'cores_per_cpu' => ( type => 'Integer', label => 'Cores');
    has_field 'physical_cpus' => ( type => 'Integer', label => 'CPUs');
    has_field 'memory_in_mb' => ( type => 'Integer', label => 'Memory (MB)');
    has_field 'documentation_url' => ( type => 'Text', label => 'Documentation URL', size => 64, maxlength => 256);
    has_field 'delivery_date' => ( 
            type => 'Compound',
            apply => [
                {
                    transform => sub{ DateTime->new( $_[0] ) },
                    message => "Not a valid DateTime",
                }
            ],
        );
        has_field 'delivery_date.year';        has_field 'delivery_date.month';        has_field 'delivery_date.day';
    has_field 'hostname' => ( type => 'Text', size => 45, required => 1, label => 'Hostname');
    has_field 'cat_accounting_type_id' => ( type => 'Integer', label => '', style => 'display: name;');
    has_field 'cluster' => ( type => 'Select', label => 'Cluster');
    has_field 'operator_group' => ( type => 'Select', label => 'Operator group');
    has_field 'cat_domain' => ( type => 'Select', label => 'Domain');
    has_field 'cat_os_architecture' => ( type => 'Select', label => 'OS Arch');
    has_field 'patchtime' => ( type => 'Select', label => 'Patch time');
    has_field 'cat_status' => ( type => 'Select', label => 'Status',);
    has_field 'cat_site' => ( type => 'Select', label => 'Site');
    has_field 'cat_asp' => ( type => 'Select', label => 'ASP');
    # has_field 'luns' => ( type => '+SM::Controller::Server::LunField', );
    has_field 'cat_location' => ( type => 'Select', label => 'Location');
    has_field 'cat_os_version' => ( type => 'Select', label => 'OS Version');
    has_field 'cat_os_category' => ( type => 'Select', style => 'display: none;', label => '');
    has_field 'cat_server_model' => ( type => 'Select', label => 'Server Model');
    has_field 'cat_product_category' => ( type => 'Select', label => 'Product Category');
    has_field 'cat_support_level' => ( type => 'Select', label => 'Support level');
    has_field 'submit' => ( widget => 'Submit', );

    __PACKAGE__->meta->make_immutable;
    no HTML::FormHandler::Moose;
}


{
    package SM::Controller::Server::LunField;
    use HTML::FormHandler::Moose;
    extends 'HTML::FormHandler::Field::Compound';
    use namespace::autoclean;

    has_field 'volume_group' => ( type => 'Text', size => 45, );
    has_field 'description' => ( type => 'Text', size => 45, maxlength => 128);
    has_field 'size_in_gb' => ( type => 'Integer', required => 1, );
    has_field 'mirrored_on_storage' => ( type => 'Text', required => 1, );
    has_field 'name' => ( type => 'Text', size => 45, required => 1, );
    has_field 'cluster_package' => ( type => 'Select', );
    has_field 'server' => ( type => 'Select', );
    has_field 'cat_os_category' => ( type => 'Select', );
    has_field 'storage' => ( type => 'Select', );
    has_field 'cat_product_category' => ( type => 'Select', );
    
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

sub base : Chained('/') PathPart('server') CaptureArgs(0) {}

1;

