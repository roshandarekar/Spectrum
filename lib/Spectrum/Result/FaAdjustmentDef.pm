use utf8;
package Spectrum::Result::FaAdjustmentDef;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAdjustmentDef

=head1 DESCRIPTION

Adjustment Defination stores Bank Receipt & Payment Adjustment setup details.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAdjustmentDef>

=cut

__PACKAGE__->table("FaAdjustmentDef");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Document Type for Which Discount Setup has Defined.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No. of Account Setup.

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Description of Discount.

=head2 amountno

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Discount Amount No. of FaOSReg Table.

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code in Which Posting is to be done.

=head2 tooltiptext

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Tool Tip Text for Entry

=head2 isentrydone

  data_type: 'bit'
  is_nullable: 0

Temporary Variable to Find Entry has Done for Amount entered only required while defining.

=cut

__PACKAGE__->add_columns(
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "amountno",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "tooltiptext",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "isentrydone",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</documenttype>

=item * L</amountno>

=back

=cut

__PACKAGE__->set_primary_key("documenttype", "amountno");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:la+SvwiWUSOqMFh5pf8N2A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
