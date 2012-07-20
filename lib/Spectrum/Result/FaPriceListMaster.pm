use utf8;
package Spectrum::Result::FaPriceListMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaPriceListMaster - Price List Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaPriceListMaster>

=cut

__PACKAGE__->table("FaPriceListMaster");

=head1 ACCESSORS

=head2 pricelistcode

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Pricelist code of Master

=head2 pricelistname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Pricelist Description

=head2 effectivedate

  data_type: 'datetime'
  is_nullable: 0

Effective Date of Price list

=head2 enddate

  data_type: 'datetime'
  is_nullable: 0

End Date of Price List

=head2 sno

  data_type: 'integer'
  is_nullable: 0

Serial No.

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code of Pricelist

=head2 colorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Code Code of Pricelist

=head2 sizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

SizeCode of PriceList

=head2 rate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Rate of PriceList

=head2 per

  data_type: 'integer'
  is_nullable: 0

Per of PriceList

=head2 rateon

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Rate On of PriceList

=head2 mrp

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

MRP of PriceList

=head2 discpercentage

  data_type: 'real'
  is_nullable: 0

Discount Percentage of Pricelist

=head2 discountamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Discount Amount of PriceList

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

TaxCode of PriceList

=head2 schemequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Scheme Quantity of PriceList

=head2 freequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Free Quantity of PriceList

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

For Selection

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Edit Flag

=cut

__PACKAGE__->add_columns(
  "pricelistcode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "pricelistname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "effectivedate",
  { data_type => "datetime", is_nullable => 0 },
  "enddate",
  { data_type => "datetime", is_nullable => 0 },
  "sno",
  { data_type => "integer", is_nullable => 0 },
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "rate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "per",
  { data_type => "integer", is_nullable => 0 },
  "rateon",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "mrp",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "discpercentage",
  { data_type => "real", is_nullable => 0 },
  "discountamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "taxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "schemequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "freequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</pricelistcode>

=item * L</itemcode>

=item * L</colorcode>

=item * L</sizecode>

=back

=cut

__PACKAGE__->set_primary_key("pricelistcode", "itemcode", "colorcode", "sizecode");

=head1 RELATIONS

=head2 itemcode

Type: belongs_to

Related object: L<Spectrum::Result::FaItemMaster>

=cut

__PACKAGE__->belongs_to(
  "itemcode",
  "Spectrum::Result::FaItemMaster",
  { itemcode => "itemcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3rwcKte58Zf/RMK2v3PJ2Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
