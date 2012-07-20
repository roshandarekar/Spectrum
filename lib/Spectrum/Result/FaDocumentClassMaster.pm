use utf8;
package Spectrum::Result::FaDocumentClassMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaDocumentClassMaster - Document Class Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaDocumentClassMaster>

=cut

__PACKAGE__->table("FaDocumentClassMaster");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Document Class

=head2 documentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class Code

=head2 documentclassname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Document Class Description

=head2 locked

  data_type: 'bit'
  is_nullable: 0

True if Locked

=head2 used

  data_type: 'bit'
  is_nullable: 0

True if Used

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date of Creation

=head2 selected

  data_type: 'bit'
  is_nullable: 0

True if Selected

=cut

__PACKAGE__->add_columns(
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "documentclasscode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "documentclassname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
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

=item * L</documentclasscode>

=back

=cut

__PACKAGE__->set_primary_key("documenttype", "documentclasscode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rW7kgRokPeKh/1ExXqdyiw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
