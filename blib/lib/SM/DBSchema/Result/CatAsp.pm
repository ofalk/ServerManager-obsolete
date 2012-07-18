use utf8;
package SM::DBSchema::Result::CatAsp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::CatAsp

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

=head1 TABLE: C<CAT_ASP>

=cut

__PACKAGE__->table("CAT_ASP");

=head1 ACCESSORS

=head2 asp_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 service_manager

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 psp_element

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 sla_level

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=cut

__PACKAGE__->add_columns(
  "asp_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "service_manager",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "psp_element",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "sla_level",
  { data_type => "varchar", is_nullable => 1, size => 25 },
);

=head1 PRIMARY KEY

=over 4

=item * L</asp_id>

=back

=cut

__PACKAGE__->set_primary_key("asp_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<NAME>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("NAME", ["name"]);

=head1 RELATIONS

=head2 cluster_packages

Type: has_many

Related object: L<SM::DBSchema::Result::ClusterPackage>

=cut

__PACKAGE__->has_many(
  "cluster_packages",
  "SM::DBSchema::Result::ClusterPackage",
  { "foreign.cat_asp_id" => "self.asp_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 servers

Type: has_many

Related object: L<SM::DBSchema::Result::Server>

=cut

__PACKAGE__->has_many(
  "servers",
  "SM::DBSchema::Result::Server",
  { "foreign.cat_asp_id" => "self.asp_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:M88ZdNSvgF80ch6zpC6wGg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->name}, fallback => 1;
__PACKAGE__->utf8_columns(qw/asp_id name service_manager psp_element sla_level/);

1;