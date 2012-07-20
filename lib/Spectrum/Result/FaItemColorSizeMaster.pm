use utf8;
package Spectrum::Result::FaItemColorSizeMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemColorSizeMaster

=head1 DESCRIPTION

Item Color Size Master Store Details of ColorSize Valuation Item for each Item plus Color plus Size.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemColorSizeMaster>

=cut

__PACKAGE__->table("FaItemColorSizeMaster");

=head1 ACCESSORS

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code for which Color & Size Detail has stored

=head2 colorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Color Code for which detail has stored

=head2 sizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Size Code for which detail has stored

=head2 purchaserate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Purchase Rate for Color & Size Item

=head2 purchaserateper

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Purchase rate per for color & size item

=head2 salesrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Sales Rate for Color & Size Item

=head2 salesrateper

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SalesRatePer for Color & Size Item

=head2 mrp

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

MRP for Color & Size Item

=head2 additionaldetail1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Additional Detail 1 for Color & Size Item

=head2 additionaldetail2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Detail 2 for Color & Size Item

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if Standard

=head2 locked

  data_type: 'bit'
  is_nullable: 0

True if Locked

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Edit Flag

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

=cut

__PACKAGE__->add_columns(
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "purchaserate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "purchaserateper",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salesrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salesrateper",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mrp",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "additionaldetail1",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "additionaldetail2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "standard",
  { data_type => "bit", is_nullable => 0 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</itemcode>

=item * L</colorcode>

=item * L</sizecode>

=back

=cut

__PACKAGE__->set_primary_key("itemcode", "colorcode", "sizecode");

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZRVDH4n995UpgrmfU3Bahw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
