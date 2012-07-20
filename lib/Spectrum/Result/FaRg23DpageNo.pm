use utf8;
package Spectrum::Result::FaRg23DpageNo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaRg23DpageNo

=head1 DESCRIPTION

RG23DPage No. Stores Document Year & Store wise Next available Page No.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaRG23DPageNo>

=cut

__PACKAGE__->table("FaRG23DPageNo");

=head1 ACCESSORS

=head2 rg23dyear

  data_type: 'smallint'
  is_nullable: 0

Document Year of RG23-D Register

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code of R23-D Register Page No.

=head2 rg23dpageno

  data_type: 'smallint'
  is_nullable: 0

Next New Page No. of RG23-D Register

=head2 rg23dentryno

  data_type: 'smallint'
  is_nullable: 0

New New Entry No. of RG23-D Register

=cut

__PACKAGE__->add_columns(
  "rg23dyear",
  { data_type => "smallint", is_nullable => 0 },
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "rg23dpageno",
  { data_type => "smallint", is_nullable => 0 },
  "rg23dentryno",
  { data_type => "smallint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</rg23dyear>

=item * L</storecode>

=back

=cut

__PACKAGE__->set_primary_key("rg23dyear", "storecode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EzZXPBiiyLYsjLrn8FZ/NQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
