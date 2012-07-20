use utf8;
package Spectrum::Result::FaWorkOrderRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaWorkOrderRegister - Work Order Register Stores Single Record for Work Order.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaWorkOrderRegister>

=cut

__PACKAGE__->table("FaWorkOrderRegister");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Document Accounting Year.

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Company Branch Code.

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type. WRK

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Document Series Code.

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No.

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Document Date

=head2 documentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class Code if Created.

=head2 refno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Reference No. for Information only.

=head2 refdate

  data_type: 'datetime'
  is_nullable: 0

Reference Date for Information only.

=head2 productstorecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Product Store Code for which Work Order has Issued.

=head2 productcode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Product Code for which Work Order has Issued.

=head2 productcolorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Product Colour Code for Which Work Order has Issued.

=head2 productsizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Product Size Code for which Work Order has Issued.

=head2 processcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Process Code for which Work Order has Issued.

=head2 orderdocumentyear

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Order Document Year for which Work Order has Prepared.

=head2 orderbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Order Branch Code for which Work Order has Prepared.

=head2 orderdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Order Document Type for which Work Order has Prepared.

=head2 orderseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Order Series Code for which Work Order has Prepared.

=head2 orderdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Order Document No. for which Work Order has Prepared.

=head2 orderitemsno

  data_type: 'smallint'
  is_nullable: 0

Item Serial No. of Item in Sales Order.

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Customer Accont Code for which Order this work order has prepared.

=head2 quantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Work Order Quantity in Main Unit.

=head2 quantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Work Order Quantity in Other Unit.

=head2 pendingquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Work Order Quantity in Main Unit.

=head2 pendingquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Work Order Quantity in Other Unit.

=head2 deliverydate

  data_type: 'datetime'
  is_nullable: 0

Date on Which Product is Required.

=head2 productionstartdate

  data_type: 'datetime'
  is_nullable: 0

Date from which Production to be Start.

=head2 calculateallprocess

  data_type: 'bit'
  is_nullable: 0

Yes to Calculate All Process to Get Required Raw Material.

=head2 materialstorecodes

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Material Store Codes to Pickup Stock Quantity & Calculate Required Quantity.

=head2 itemheading

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Store Fixed Multiline Item Heading to print before Item detail.

=head2 remark

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Store Multiline Remark to Print after all item detail & calculation.

=head2 cancelled

  data_type: 'bit'
  is_nullable: 0

True when work Order is Cancelled.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Keep Value while Editing.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

If Yes then Entry has Locked.

=head2 passed

  data_type: 'bit'
  is_nullable: 0

If Yes then Entry has Passed.

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

System Date on Entry Entered.

=head2 package

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Package Name from entry has done.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection.

=head2 isprinted

  data_type: 'bit'
  is_nullable: 0

True if Document has Printed.

=cut

__PACKAGE__->add_columns(
  "documentyear",
  { data_type => "smallint", is_nullable => 0 },
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "seriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "documentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "documentdate",
  { data_type => "datetime", is_nullable => 0 },
  "documentclasscode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "refno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "refdate",
  { data_type => "datetime", is_nullable => 0 },
  "productstorecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "productcode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "productcolorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "productsizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "processcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "orderdocumentyear",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "orderbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "orderdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "orderseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "orderdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "orderitemsno",
  { data_type => "smallint", is_nullable => 0 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
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
  "deliverydate",
  { data_type => "datetime", is_nullable => 0 },
  "productionstartdate",
  { data_type => "datetime", is_nullable => 0 },
  "calculateallprocess",
  { data_type => "bit", is_nullable => 0 },
  "materialstorecodes",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "itemheading",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "remark",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "cancelled",
  { data_type => "bit", is_nullable => 0 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "passed",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
  "isprinted",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
);

=head1 RELATIONS

=head2 fa_work_order_products

Type: has_many

Related object: L<Spectrum::Result::FaWorkOrderProduct>

=cut

__PACKAGE__->has_many(
  "fa_work_order_products",
  "Spectrum::Result::FaWorkOrderProduct",
  {
    "foreign.branchcode"   => "self.branchcode",
    "foreign.documentno"   => "self.documentno",
    "foreign.documenttype" => "self.documenttype",
    "foreign.documentyear" => "self.documentyear",
    "foreign.seriescode"   => "self.seriescode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Lm3orj3tO63w9u1iYFu4wg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
