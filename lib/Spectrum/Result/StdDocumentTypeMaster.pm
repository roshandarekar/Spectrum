use utf8;
package Spectrum::Result::StdDocumentTypeMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdDocumentTypeMaster - Document Type Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdDocumentTypeMaster>

=cut

__PACKAGE__->table("stdDocumentTypeMaster");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type.

=head2 documentdescription

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Document Description.

=head2 optioncode

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Option No for Data entry

=head2 requiredtopass

  data_type: 'bit'
  is_nullable: 0

If Yes then this document will save into record but will not pass any effect nor we can use for any reference.

=head2 allowedtolock

  data_type: 'bit'
  is_nullable: 0

If Yes then User can Lock any particular documents.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

If Yes then Document Type has Locked.

=head2 used

  data_type: 'bit'
  is_nullable: 0

True Means Document Type has used

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date on which record has inserted.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

for Temporary Selection purpose.

=cut

__PACKAGE__->add_columns(
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "documentdescription",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "optioncode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "requiredtopass",
  { data_type => "bit", is_nullable => 0 },
  "allowedtolock",
  { data_type => "bit", is_nullable => 0 },
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

=item * L</documenttype>

=back

=cut

__PACKAGE__->set_primary_key("documenttype");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8inYEeStdcBrAmCW34eCYQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
