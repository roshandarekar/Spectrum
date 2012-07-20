use utf8;
package Spectrum::Result::FaListingField;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaListingField

=head1 DESCRIPTION

Listing Fields stores list of fields for each documents for data listing if user select extra fields for recordset.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaListingFields>

=cut

__PACKAGE__->table("FaListingFields");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Document Type or Report Option No. for Which Field has Selected

=head2 tablename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Table Name of Fields

=head2 fieldname

  data_type: 'varchar'
  is_nullable: 0
  size: 100

Field Name with Table Name.

=cut

__PACKAGE__->add_columns(
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "tablename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "fieldname",
  { data_type => "varchar", is_nullable => 0, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</documenttype>

=item * L</tablename>

=item * L</fieldname>

=back

=cut

__PACKAGE__->set_primary_key("documenttype", "tablename", "fieldname");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qhi1CVOWD6N4AmxGtUW/KA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
