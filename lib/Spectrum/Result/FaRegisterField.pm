use utf8;
package Spectrum::Result::FaRegisterField;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaRegisterField

=head1 DESCRIPTION

Register Fields stores list of fields for each documents for Register if user select extra fields for recordset.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaRegisterFields>

=cut

__PACKAGE__->table("FaRegisterFields");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type for Which Field has Selected

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
  { data_type => "varchar", is_nullable => 0, size => 3 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:utnKNdo5GoNIM/9XtyDqwA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
