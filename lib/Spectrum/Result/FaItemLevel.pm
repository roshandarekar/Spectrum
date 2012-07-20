use utf8;
package Spectrum::Result::FaItemLevel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemLevel

=head1 DESCRIPTION

Item Level Master stores Items store wise Minimum/Maximum Level etc. figire and also stores on order / allocate qty etc.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemLevel>

=cut

__PACKAGE__->table("FaItemLevel");

=head1 ACCESSORS

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code for which Level has stored.

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code for which Level has stored.

=head2 minquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Minimum Required quantity in stock.

=head2 maxquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Maximum Required Quantity in Stock.

=head2 eoquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Economic Order Quantity in Stock.

=head2 rolquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ReOrder Level at which order has to place.

=head2 leadtime

  data_type: 'smallint'
  is_nullable: 0

Time required to Receive Item or Production.

=head2 reviewperiod

  data_type: 'smallint'
  is_nullable: 0

Review Period in Days.

=head2 productioncapacity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Production Capicity per day.

=head2 woallocatequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity Allocate by Work Order.

=head2 doallocatequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity Allocate by Delivery Order.

=head2 salesorderquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Sales Order Pending Delivered Quantity.

=head2 purchaseorderquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Purchase Order Pending Quantity.

=head2 workorderquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Work Order Quantity.

=cut

__PACKAGE__->add_columns(
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "minquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "maxquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "eoquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rolquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "leadtime",
  { data_type => "smallint", is_nullable => 0 },
  "reviewperiod",
  { data_type => "smallint", is_nullable => 0 },
  "productioncapacity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "woallocatequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "doallocatequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salesorderquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "purchaseorderquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "workorderquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</itemcode>

=item * L</storecode>

=back

=cut

__PACKAGE__->set_primary_key("itemcode", "storecode");

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hPkJLtB9Dgonf/Nzeib04w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
