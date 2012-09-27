use utf8;
package SM::DBSchema::Result::Storage;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::Storage

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

=head1 TABLE: C<STORAGE>

=cut

__PACKAGE__->table("STORAGE");

=head1 ACCESSORS

=head2 storage_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 cat_storage_model_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_site_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_location_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 ip_addr_1

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 ip_addr_2

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=cut

__PACKAGE__->add_columns(
  "storage_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "cat_storage_model_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_site_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "cat_location_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "ip_addr_1",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "ip_addr_2",
  { data_type => "varchar", is_nullable => 0, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</storage_id>

=back

=cut

__PACKAGE__->set_primary_key("storage_id");

=head1 RELATIONS

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

=head2 cat_storage_model

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatStorageModel>

=cut

__PACKAGE__->belongs_to(
  "cat_storage_model",
  "SM::DBSchema::Result::CatStorageModel",
  { storage_model_id => "cat_storage_model_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 luns

Type: has_many

Related object: L<SM::DBSchema::Result::Lun>

=cut

__PACKAGE__->has_many(
  "luns",
  "SM::DBSchema::Result::Lun",
  { "foreign.storage_id" => "self.storage_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r1cHydcvctGeX1VWNkBYRg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->name}, fallback => 1;
__PACKAGE__->utf8_columns(qw/storage_id cat_storage_model_id cat_site_id cat_location_id name ip_addr_1 ip_addr_2/);

1;
