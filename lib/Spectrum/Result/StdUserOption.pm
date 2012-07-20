use utf8;
package Spectrum::Result::StdUserOption;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdUserOption

=head1 DESCRIPTION

User Option stores user wise available option and it's rights.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdUserOption>

=cut

__PACKAGE__->table("stdUserOption");

=head1 ACCESSORS

=head2 userid

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 20

User ID for which Option rights has defined

=head2 optionnumber

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Option No. allowed to user

=head2 allowadd

  data_type: 'bit'
  is_nullable: 0

True if User Allow to Add

=head2 allowedit

  data_type: 'bit'
  is_nullable: 0

True if User Allow to Edit

=head2 allowdelete

  data_type: 'bit'
  is_nullable: 0

True if User Allow to Delete

=head2 allowprint

  data_type: 'bit'
  is_nullable: 0

True if User Allow to Print

=head2 allowcanceldocument

  data_type: 'bit'
  is_nullable: 0

True if User Allow to Cancel Document

=head2 allowexporttofile

  data_type: 'bit'
  is_nullable: 0

True if User Allow to Export to File

=head2 allowemail

  data_type: 'bit'
  is_nullable: 0

True if User Allow to Email

=head2 allowreprint

  data_type: 'bit'
  is_nullable: 0

True if User Allow to Reprint

=head2 allowpass

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Pass any document.

=head2 allowlock

  data_type: 'bit'
  is_nullable: 0

True if User is allow to Lock any document.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 20 },
  "optionnumber",
  { data_type => "varchar", is_nullable => 0, size => 10 },
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
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=item * L</optionnumber>

=back

=cut

__PACKAGE__->set_primary_key("userid", "optionnumber");

=head1 RELATIONS

=head2 userid

Type: belongs_to

Related object: L<Spectrum::Result::StdUser>

=cut

__PACKAGE__->belongs_to(
  "userid",
  "Spectrum::Result::StdUser",
  { userid => "userid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:b8CtzY2ONSoETuh4QV6pxA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
