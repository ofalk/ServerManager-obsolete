use utf8;
package SM::DBSchema::Result::Oncall;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::Oncall

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

=head1 TABLE: C<ONCALL>

=cut

__PACKAGE__->table("ONCALL");

=head1 ACCESSORS

=head2 oncall_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 adm_user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 adm_department_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 problem_description

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 start_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 stop_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 problem_details

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "oncall_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "adm_user_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "adm_department_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "problem_description",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "start_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "stop_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "problem_details",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</oncall_id>

=back

=cut

__PACKAGE__->set_primary_key("oncall_id");

=head1 RELATIONS

=head2 adm_department

Type: belongs_to

Related object: L<SM::DBSchema::Result::AdmDepartment>

=cut

__PACKAGE__->belongs_to(
  "adm_department",
  "SM::DBSchema::Result::AdmDepartment",
  { department_id => "adm_department_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 adm_user

Type: belongs_to

Related object: L<SM::DBSchema::Result::AdmUser>

=cut

__PACKAGE__->belongs_to(
  "adm_user",
  "SM::DBSchema::Result::AdmUser",
  { user_id => "adm_user_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ibWn3U/qtWcg2rEoIOQ/tQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->id}, fallback => 1;
__PACKAGE__->utf8_columns(qw/oncall_id adm_user_id adm_department_id problem_description start_date stop_date problem_details/);

1;