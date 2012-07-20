use utf8;
package Spectrum::Result::FaPurchaseOrderScheduleHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaPurchaseOrderScheduleHistory

=head1 DESCRIPTION

Purchase Order Schedule History store Delivery schedule details of purchase order items before purchase order amendment has made.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaPurchaseOrderScheduleHistory>

=cut

__PACKAGE__->table("FaPurchaseOrderScheduleHistory");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

Document Accounting Year.

=head2 branchcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Company Branch Code.

=head2 documenttype

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Document Type. "SAO"

=head2 seriescode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 4

Document Series Code.

=head2 documentno

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Document No.

=head2 amendmentkey

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 20

Amendment Document Key.

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code.

=head2 itemsno

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

Item Serial No. which can't change once saved.

=head2 deliverydate

  data_type: 'datetime'
  is_nullable: 0

Store Date of Delivery

=head2 entryquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Entry Enquiry Quantity in Main Unit.

=head2 entryquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Entry Enquiry Quantity in Other Unit.

=head2 quantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Enquiry Quantity in Main Unit after converting.

=head2 quantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Enquiry Quantity in Other Unit after converting.

=head2 pendingquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Order Quantity in Main Unit.

=head2 pendingquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Order Quantity in Other Unit.

=head2 pendingwoquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Work Order Quantity in Main Unit.

=head2 pendingwoquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Work Order Quantity in Other Unit.

=head2 doquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Delivery Order Quantity in Main Unit.

=head2 doquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Delivery Order Quantity in Other Unit.

=head2 allocatequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Allocate Quantity in Main Unit.

=head2 allocatequantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Allocate Quantity in Other Unit.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Keep Value while Editing.

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

System Date on Entry Entered.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

Selected Flag.

=cut

__PACKAGE__->add_columns(
  "documentyear",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "branchcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "documenttype",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "seriescode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 4 },
  "documentno",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "amendmentkey",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 20 },
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "itemsno",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "deliverydate",
  { data_type => "datetime", is_nullable => 0 },
  "entryquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "entryquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "pendingquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "pendingquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "pendingwoquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "pendingwoquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "doquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "doquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "allocatequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "allocatequantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

=item * L</amendmentkey>

=item * L</itemcode>

=item * L</itemsno>

=item * L</deliverydate>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "amendmentkey",
  "itemcode",
  "itemsno",
  "deliverydate",
);

=head1 RELATIONS

=head2 fa_purchase_order_products_history

Type: belongs_to

Related object: L<Spectrum::Result::FaPurchaseOrderProductsHistory>

=cut

__PACKAGE__->belongs_to(
  "fa_purchase_order_products_history",
  "Spectrum::Result::FaPurchaseOrderProductsHistory",
  {
    amendmentkey => "amendmentkey",
    branchcode   => "branchcode",
    documentno   => "documentno",
    documenttype => "documenttype",
    documentyear => "documentyear",
    itemcode     => "itemcode",
    itemsno      => "itemsno",
    seriescode   => "seriescode",
  },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oIvRRgrPewZHDlEi6SVtBA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
