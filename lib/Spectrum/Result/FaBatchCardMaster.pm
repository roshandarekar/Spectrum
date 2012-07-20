use utf8;
package Spectrum::Result::FaBatchCardMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaBatchCardMaster

=head1 DESCRIPTION

Batch Card Master Store Batch Card (Bill of Material) Details

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaBatchCardMaster>

=cut

__PACKAGE__->table("FaBatchCardMaster");

=head1 ACCESSORS

=head2 productcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Product Item Code for which Bill of Material has defined.

=head2 productcolorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Color Code of Item

=head2 productsizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Size Code of Item

=head2 processcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Process Code of Item

=head2 batchquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Batch Quantity for which bill of material has defined

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No.

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code to be used to make above product

=head2 colorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Color code to be used to make above product

=head2 sizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Size Code to be used to make above product

=head2 itempercentage

  data_type: 'real'
  is_nullable: 0

Percentage of Item to be use to make product

=head2 itemquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity of Item to be use to make product

=head2 itemtype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Type of Item for Process above product C - Consumption or B - By Product

=head2 nature

  data_type: 'varchar'
  is_nullable: 0
  size: 1

For Modvat Package

=head2 declared

  data_type: 'bit'
  is_nullable: 0

For Modvat Package

=head2 remark

  data_type: 'varchar'
  is_nullable: 0
  size: 40

For Modvat Package

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

for Selection

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Flag for Editing

=cut

__PACKAGE__->add_columns(
  "productcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "productcolorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "productsizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "processcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "batchquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "itempercentage",
  { data_type => "real", is_nullable => 0 },
  "itemquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "itemtype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "nature",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "declared",
  { data_type => "bit", is_nullable => 0 },
  "remark",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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

=item * L</productcode>

=item * L</productcolorcode>

=item * L</productsizecode>

=item * L</processcode>

=item * L</sno>

=item * L</itemcode>

=item * L</colorcode>

=item * L</sizecode>

=back

=cut

__PACKAGE__->set_primary_key(
  "productcode",
  "productcolorcode",
  "productsizecode",
  "processcode",
  "sno",
  "itemcode",
  "colorcode",
  "sizecode",
);

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

=head2 productcode

Type: belongs_to

Related object: L<Spectrum::Result::FaItemMaster>

=cut

__PACKAGE__->belongs_to(
  "productcode",
  "Spectrum::Result::FaItemMaster",
  { itemcode => "productcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yU61ow5O+5Y3JlVteKMY5g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
