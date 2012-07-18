use utf8;
package SM::DBSchema::Result::CatVendor;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::CatVendor

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

=head1 TABLE: C<CAT_VENDOR>

=cut

__PACKAGE__->table("CAT_VENDOR");

=head1 ACCESSORS

=head2 vendor_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 contact_person

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 contact_phone

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "vendor_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "contact_person",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "contact_phone",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</vendor_id>

=back

=cut

__PACKAGE__->set_primary_key("vendor_id");

=head1 RELATIONS

=head2 cat_server_models

Type: has_many

Related object: L<SM::DBSchema::Result::CatServerModel>

=cut

__PACKAGE__->has_many(
  "cat_server_models",
  "SM::DBSchema::Result::CatServerModel",
  { "foreign.cat_vendor_id" => "self.vendor_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 cat_storage_models

Type: has_many

Related object: L<SM::DBSchema::Result::CatStorageModel>

=cut

__PACKAGE__->has_many(
  "cat_storage_models",
  "SM::DBSchema::Result::CatStorageModel",
  { "foreign.cat_vendor_id" => "self.vendor_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IQ5Xymy8KWVdBBbo5SP2qg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->name}, fallback => 1;
__PACKAGE__->utf8_columns(qw/vendor_id name contact_person contact_phone/);

1;