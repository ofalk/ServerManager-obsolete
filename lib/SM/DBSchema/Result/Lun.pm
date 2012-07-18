use utf8;
package SM::DBSchema::Result::Lun;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::Lun

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

=head1 TABLE: C<LUN>

=cut

__PACKAGE__->table("LUN");

=head1 ACCESSORS

=head2 lun_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 storage_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cluster_package_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 server_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_os_category_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_product_category_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 mirrored_on_storage

  data_type: 'tinyint'
  is_nullable: 0

=head2 size_in_gb

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 80

=head2 volume_group

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "lun_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "storage_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cluster_package_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "server_id",
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
  "cat_product_category_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "mirrored_on_storage",
  { data_type => "tinyint", is_nullable => 0 },
  "size_in_gb",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 80 },
  "volume_group",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</lun_id>

=back

=cut

__PACKAGE__->set_primary_key("lun_id");

=head1 RELATIONS

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

=head2 cluster_package

Type: belongs_to

Related object: L<SM::DBSchema::Result::ClusterPackage>

=cut

__PACKAGE__->belongs_to(
  "cluster_package",
  "SM::DBSchema::Result::ClusterPackage",
  { cluster_package_id => "cluster_package_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 server

Type: belongs_to

Related object: L<SM::DBSchema::Result::Server>

=cut

__PACKAGE__->belongs_to(
  "server",
  "SM::DBSchema::Result::Server",
  { server_id => "server_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 storage

Type: belongs_to

Related object: L<SM::DBSchema::Result::Storage>

=cut

__PACKAGE__->belongs_to(
  "storage",
  "SM::DBSchema::Result::Storage",
  { storage_id => "storage_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cC+whRUDsb6vxvkXsGjWhg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->name}, fallback => 1;
__PACKAGE__->utf8_columns(qw/lun_id storage_id cluster_package_id server_id cat_os_category_id cat_product_category_id name mirrored_on_storage size_in_gb description volume_group/);

1;