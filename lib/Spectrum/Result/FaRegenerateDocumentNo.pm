use utf8;
package Spectrum::Result::FaRegenerateDocumentNo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaRegenerateDocumentNo

=head1 DESCRIPTION

Temporary Table Required to Regenerate Document Nos. will not store any records.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaRegenerateDocumentNos>

=cut

__PACKAGE__->table("FaRegenerateDocumentNos");

=head1 ACCESSORS

=head2 olddocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Old Document No. to be Replaced with New.

=head2 newdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

New Document No. to be Replace Against Old.

=cut

__PACKAGE__->add_columns(
  "olddocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "newdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
);

=head1 PRIMARY KEY

=over 4

=item * L</olddocumentno>

=back

=cut

__PACKAGE__->set_primary_key("olddocumentno");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SlnTTOYAsHfLGNoqScnxfg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
