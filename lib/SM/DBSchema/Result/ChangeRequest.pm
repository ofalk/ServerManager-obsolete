use utf8;
package SM::DBSchema::Result::ChangeRequest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SM::DBSchema::Result::ChangeRequest

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

=head1 TABLE: C<CHANGE_REQUEST>

=cut

__PACKAGE__->table("CHANGE_REQUEST");

=head1 ACCESSORS

=head2 change_request_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 raised_by_uid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 approved_by_uid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 reason_for_change

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 implemented_by

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 start_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 stop_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 users_to_inform

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 impact_on

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 risks

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 change_short

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 change_long

  data_type: 'text'
  is_nullable: 1

=head2 status

  data_type: 'integer'
  is_nullable: 0

=head2 requested_by

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "change_request_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "raised_by_uid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "approved_by_uid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "reason_for_change",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "implemented_by",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "start_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "stop_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "users_to_inform",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "impact_on",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "risks",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "change_short",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "change_long",
  { data_type => "text", is_nullable => 1 },
  "status",
  { data_type => "integer", is_nullable => 0 },
  "requested_by",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</change_request_id>

=back

=cut

__PACKAGE__->set_primary_key("change_request_id");

=head1 RELATIONS

=head2 approved_by_uid

Type: belongs_to

Related object: L<SM::DBSchema::Result::AdmUser>

=cut

__PACKAGE__->belongs_to(
  "approved_by_uid",
  "SM::DBSchema::Result::AdmUser",
  { user_id => "approved_by_uid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 raised_by_uid

Type: belongs_to

Related object: L<SM::DBSchema::Result::AdmUser>

=cut

__PACKAGE__->belongs_to(
  "raised_by_uid",
  "SM::DBSchema::Result::AdmUser",
  { user_id => "raised_by_uid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-03 18:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nbL3x8GQSRDt2Q+OPTRkLQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
use overload '""' => sub {$_[0]->id}, fallback => 1;
__PACKAGE__->utf8_columns(qw/change_request_id raised_by_uid approved_by_uid reason_for_change implemented_by start_date stop_time users_to_inform impact_on risks change_short change_long status requested_by/);

1;