use utf8;
package SM::DBSchema::Result::CatStorageModel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::CatStorageModel

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

=head1 TABLE: C<CAT_STORAGE_MODEL>

=cut

__PACKAGE__->table("CAT_STORAGE_MODEL");

=head1 ACCESSORS

=head2 storage_model_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 cat_vendor_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=cut

__PACKAGE__->add_columns(
  "storage_model_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "cat_vendor_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</storage_model_id>

=back

=cut

__PACKAGE__->set_primary_key("storage_model_id");

=head1 RELATIONS

=head2 cat_vendor

Type: belongs_to

Related object: L<SM::DBSchema::Result::CatVendor>

=cut

__PACKAGE__->belongs_to(
  "cat_vendor",
  "SM::DBSchema::Result::CatVendor",
  { vendor_id => "cat_vendor_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 storages

Type: has_many

Related object: L<SM::DBSchema::Result::Storage>

=cut

__PACKAGE__->has_many(
  "storages",
  "SM::DBSchema::Result::Storage",
  { "foreign.cat_storage_model_id" => "self.storage_model_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1Pnn+5rxi/PJinElHoRb6g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->name}, fallback => 1;
__PACKAGE__->utf8_columns(qw/storage_model_id cat_vendor_id name/);

1;