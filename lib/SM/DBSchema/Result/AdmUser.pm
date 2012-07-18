use utf8;
package SM::DBSchema::Result::AdmUser;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::AdmUser

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

=head1 TABLE: C<ADM_USER>

=cut

__PACKAGE__->table("ADM_USER");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 adm_department_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 adm_role_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 x_key

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 full_name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 mail_address

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "user_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "adm_department_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "adm_role_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "x_key",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "full_name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "mail_address",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("user_id");

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

=head2 adm_role

Type: belongs_to

Related object: L<SM::DBSchema::Result::AdmRole>

=cut

__PACKAGE__->belongs_to(
  "adm_role",
  "SM::DBSchema::Result::AdmRole",
  { role_id => "adm_role_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 adm_user2groups

Type: has_many

Related object: L<SM::DBSchema::Result::AdmUser2group>

=cut

__PACKAGE__->has_many(
  "adm_user2groups",
  "SM::DBSchema::Result::AdmUser2group",
  { "foreign.user_id" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 change_requests_approved_by_uid

Type: has_many

Related object: L<SM::DBSchema::Result::ChangeRequest>

=cut

__PACKAGE__->has_many(
  "change_requests_approved_by_uid",
  "SM::DBSchema::Result::ChangeRequest",
  { "foreign.approved_by_uid" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 change_requests_raised_by_uid

Type: has_many

Related object: L<SM::DBSchema::Result::ChangeRequest>

=cut

__PACKAGE__->has_many(
  "change_requests_raised_by_uid",
  "SM::DBSchema::Result::ChangeRequest",
  { "foreign.raised_by_uid" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 oncalls

Type: has_many

Related object: L<SM::DBSchema::Result::Oncall>

=cut

__PACKAGE__->has_many(
  "oncalls",
  "SM::DBSchema::Result::Oncall",
  { "foreign.adm_user_id" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 groups

Type: many_to_many

Composing rels: L</adm_user2groups> -> group

=cut

__PACKAGE__->many_to_many("groups", "adm_user2groups", "group");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jFo/cmRHG9XbCR7teOtArQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->full_name}, fallback => 1;
__PACKAGE__->utf8_columns(qw/user_id adm_department_id adm_role_id x_key full_name mail_address/);

1;