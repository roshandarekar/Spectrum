use utf8;
package Spectrum::Result::StdUser;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdUser - User Stores User Details.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdUsers>

=cut

__PACKAGE__->table("stdUsers");

=head1 ACCESSORS

=head2 userid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Name of the User

=head2 password

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Password of User

=head2 issupervisor

  data_type: 'bit'
  is_nullable: 0

True if User is Supervisor

=head2 allowadd

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Add New Master or Entry

=head2 allowedit

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Alter any Master or Entry

=head2 allowdelete

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Delete any Master or Entry

=head2 allowprint

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Print any Document or Report

=head2 allowcanceldocument

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Cancel any Document.

=head2 allowexporttofile

  data_type: 'bit'
  is_nullable: 0

Tre if User is allow to Export any Document or Report to File.

=head2 allowemail

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Email any Document of Report.

=head2 allowreprint

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Reprint any Document.

=head2 allowpass

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Pass any document.

=head2 allowlock

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Lock any document.

=head2 branchcodes

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

List of Branch Code Seperated by Comma in which user is allow to work if Branch is TRUE

=head2 storecodes

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

List of Store Codes Seperated by Comma in which user is allow to work if Branch is TRUE

=head2 accountgroupcodes

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

List of Account Groups in which user are allow to work else for all.

=head2 allowedcompanies

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

List of Company in which user are allows to work. (ONLY FOR SQL SERVER)

=head2 locked

  data_type: 'bit'
  is_nullable: 0

True if User has Locked

=head2 used

  data_type: 'bit'
  is_nullable: 0

True if Used

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date use has created

=head2 selected

  data_type: 'bit'
  is_nullable: 0

Selected

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "password",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "issupervisor",
  { data_type => "bit", is_nullable => 0 },
  "allowadd",
  { data_type => "bit", is_nullable => 0 },
  "allowedit",
  { data_type => "bit", is_nullable => 0 },
  "allowdelete",
  { data_type => "bit", is_nullable => 0 },
  "allowprint",
  { data_type => "bit", is_nullable => 0 },
  "allowcanceldocument",
  { data_type => "bit", is_nullable => 0 },
  "allowexporttofile",
  { data_type => "bit", is_nullable => 0 },
  "allowemail",
  { data_type => "bit", is_nullable => 0 },
  "allowreprint",
  { data_type => "bit", is_nullable => 0 },
  "allowpass",
  { data_type => "bit", is_nullable => 0 },
  "allowlock",
  { data_type => "bit", is_nullable => 0 },
  "branchcodes",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "storecodes",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "accountgroupcodes",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "allowedcompanies",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=back

=cut

__PACKAGE__->set_primary_key("userid");

=head1 RELATIONS

=head2 std_user_options

Type: has_many

Related object: L<Spectrum::Result::StdUserOption>

=cut

__PACKAGE__->has_many(
  "std_user_options",
  "Spectrum::Result::StdUserOption",
  { "foreign.userid" => "self.userid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:USM/j0FceDH/Q0rRqcCclg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
