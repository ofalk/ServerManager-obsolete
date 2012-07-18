use utf8;
package SM::DBSchema::Result::ClusterPackage;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::ClusterPackage

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

=head1 TABLE: C<CLUSTER_PACKAGE>

=cut

__PACKAGE__->table("CLUSTER_PACKAGE");

=head1 ACCESSORS

=head2 cluster_package_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 cluster_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 cat_asp_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 cat_status_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cluster_package_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "cluster_id",
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
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "cat_status_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</cluster_package_id>

=back

=cut

__PACKAGE__->set_primary_key("cluster_package_id");

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
  { "foreign.cluster_package_id" => "self.cluster_package_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xHc6MSL6yqs6qY38rS/uzA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->name}, fallback => 1;
__PACKAGE__->utf8_columns(qw/cluster_package_id cluster_id cat_asp_id name description cat_status_id/);

1;