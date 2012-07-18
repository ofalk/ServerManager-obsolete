use utf8;
package SM::DBSchema::Result::Server;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::Server

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::UTF8Columns>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "UTF8Columns");

=head1 TABLE: C<SERVER>

=cut

__PACKAGE__->table("SERVER");

=head1 ACCESSORS

=head2 server_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 cat_site_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_asp_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_server_model_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_os_category_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_os_version_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_status_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_product_category_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_accounting_type_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 cat_location_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_domain_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_support_level_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_os_architecture_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cluster_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 hostname

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 delivery_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 documentation_url

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 memory_in_mb

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 physical_cpus

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 cores_per_cpu

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 cpu_speed

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 application

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 rack

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 ip_address

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 subnet_mask

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 default_gateway

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 additional_ip

  data_type: 'text'
  is_nullable: 1

=head2 management_ip

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 management_hostname

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 delivery_note_id

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 serial_nr

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 fc_attached

  data_type: 'tinyint'
  is_nullable: 1

=head2 maintenance_end

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 iscsi_attached

  data_type: 'tinyint'
  is_nullable: 1

=head2 autodiscovery

  data_type: 'tinyint'
  is_nullable: 1

=head2 operator_group_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 reboot_notes

  data_type: 'text'
  is_nullable: 1

=head2 patch_notes

  data_type: 'text'
  is_nullable: 1

=head2 patchtime

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 asset_id

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 tags

  data_type: 'varchar'
  is_nullable: 1
  size: 1024

=head2 license_end

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 license

  data_type: 'varchar'
  is_nullable: 1
  size: 17

=cut

__PACKAGE__->add_columns(
  "server_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "cat_site_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_asp_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_server_model_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_os_category_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_os_version_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_status_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_product_category_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_accounting_type_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "cat_location_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_domain_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_support_level_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_os_architecture_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cluster_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "hostname",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "delivery_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "documentation_url",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "memory_in_mb",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "physical_cpus",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "cores_per_cpu",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "cpu_speed",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "application",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "rack",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "ip_address",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "subnet_mask",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "default_gateway",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "additional_ip",
  { data_type => "text", is_nullable => 1 },
  "management_ip",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "management_hostname",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "delivery_note_id",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "serial_nr",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "fc_attached",
  { data_type => "tinyint", is_nullable => 1 },
  "maintenance_end",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "iscsi_attached",
  { data_type => "tinyint", is_nullable => 1 },
  "autodiscovery",
  { data_type => "tinyint", is_nullable => 1 },
  "operator_group_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "reboot_notes",
  { data_type => "text", is_nullable => 1 },
  "patch_notes",
  { data_type => "text", is_nullable => 1 },
  "patchtime",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "asset_id",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "tags",
  { data_type => "varchar", is_nullable => 1, size => 1024 },
  "license_end",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "license",
  { data_type => "varchar", is_nullable => 1, size => 17 },
);

=head1 PRIMARY KEY

=over 4

=item * L</server_id>

=back

=cut

__PACKAGE__->set_primary_key("server_id");

=head1 RELATIONS

=head2 cat_asp

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatAsp>

=cut

__PACKAGE__->belongs_to(
  "cat_asp",
  "SM::DBSchema::Result::CatAsp",
  { asp_id => "cat_asp_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_domain

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatDomain>

=cut

__PACKAGE__->belongs_to(
  "cat_domain",
  "SM::DBSchema::Result::CatDomain",
  { domain_id => "cat_domain_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_location

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatLocation>

=cut

__PACKAGE__->belongs_to(
  "cat_location",
  "SM::DBSchema::Result::CatLocation",
  { location_id => "cat_location_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_os_architecture

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatOsArchitecture>

=cut

__PACKAGE__->belongs_to(
  "cat_os_architecture",
  "SM::DBSchema::Result::CatOsArchitecture",
  { os_architecture_id => "cat_os_architecture_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_os_category

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatOsCategory>

=cut

__PACKAGE__->belongs_to(
  "cat_os_category",
  "SM::DBSchema::Result::CatOsCategory",
  { os_category_id => "cat_os_category_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_os_version

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatOsVersion>

=cut

__PACKAGE__->belongs_to(
  "cat_os_version",
  "SM::DBSchema::Result::CatOsVersion",
  { os_version_id => "cat_os_version_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_product_category

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatProductCategory>

=cut

__PACKAGE__->belongs_to(
  "cat_product_category",
  "SM::DBSchema::Result::CatProductCategory",
  { product_category_id => "cat_product_category_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_server_model

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatServerModel>

=cut

__PACKAGE__->belongs_to(
  "cat_server_model",
  "SM::DBSchema::Result::CatServerModel",
  { server_model_id => "cat_server_model_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_site

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatSite>

=cut

__PACKAGE__->belongs_to(
  "cat_site",
  "SM::DBSchema::Result::CatSite",
  { site_id => "cat_site_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_status

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatStatus>

=cut

__PACKAGE__->belongs_to(
  "cat_status",
  "SM::DBSchema::Result::CatStatus",
  { status_id => "cat_status_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cat_support_level

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatSupportLevel>

=cut

__PACKAGE__->belongs_to(
  "cat_support_level",
  "SM::DBSchema::Result::CatSupportLevel",
  { support_level_id => "cat_support_level_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 cluster

Type: belongs_to

Related object: L<SM::DBSchema::Result::Cluster>

=cut

__PACKAGE__->belongs_to(
  "cluster",
  "SM::DBSchema::Result::Cluster",
  { cluster_id => "cluster_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 luns

Type: has_many

Related object: L<SM::DBSchema::Result::Lun>

=cut

__PACKAGE__->has_many(
  "luns",
  "SM::DBSchema::Result::Lun",
  { "foreign.server_id" => "self.server_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 operator_group

Type: belongs_to

Related object: L<SM::DBSchema::Result::OperatorGroup>

=cut

__PACKAGE__->belongs_to(
  "operator_group",
  "SM::DBSchema::Result::OperatorGroup",
  { operator_group_id => "operator_group_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 patchtime

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatPatchtime>

=cut

__PACKAGE__->belongs_to(
  "patchtime",
  "SM::DBSchema::Result::CatPatchtime",
  { patchtime_id => "patchtime" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iGLmfYC1womZw7bDrug5gA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->hostname}, fallback => 1;
__PACKAGE__->utf8_columns(qw/server_id cat_site_id cat_asp_id cat_server_model_id cat_os_category_id cat_os_version_id cat_status_id cat_product_category_id cat_accounting_type_id cat_location_id cat_domain_id cat_support_level_id cat_os_architecture_id cluster_id hostname delivery_date documentation_url memory_in_mb physical_cpus cores_per_cpu cpu_speed application rack ip_address subnet_mask default_gateway additional_ip management_ip management_hostname delivery_note_id serial_nr fc_attached maintenance_end description iscsi_attached autodiscovery operator_group_id reboot_notes patch_notes patchtime asset_id tags license_end license/);

1;