use utf8;
package Spectrum::Result::FaSalesOrderProductsHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSalesOrderProductsHistory

=head1 DESCRIPTION

Sales Order Product History stores details of Sales Order Products before Sales Order Amendment has made.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSalesOrderProductsHistory>

=cut

__PACKAGE__->table("FaSalesOrderProductsHistory");

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

=head2 quotationdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Quotation Document Accounting Year.

=head2 quotationbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Quotation Company Branch Code.

=head2 quotationdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Quotation Document Type. "SQT"

=head2 quotationseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Quotation Document Series Code.

=head2 quotationdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Quotation Document No.

=head2 quotationitemsno

  data_type: 'smallint'
  is_nullable: 0

Quotation Item Serial No. which can't change once saved.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No. in which Item Entered.

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code for which Order has issued.

=head2 itemcode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Item Code.

=head2 itemsno

  data_type: 'smallint'
  is_nullable: 0

Item Serial No. which can't change once saved.

=head2 colorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Color of Item.

=head2 sizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Size Code of Item.

=head2 itemdescription

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Multi Line Item Description.

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

Quantity in Main Unit has been allocate by Delivery Order.

=head2 doquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity in Main Unit has been allocate by Delivery Order.

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

=head2 freequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Free Quantity if Given.

=head2 itemtype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Store C for Chargable, F for Free, R for Replacement, S for Schame.

=head2 rate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Rate of Item in Local Currency.

=head2 per

  data_type: 'integer'
  is_nullable: 0

Store Rate per of Item.

=head2 rateon

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Store M for Main Unit & O for Other Unit.

=head2 amount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Product Amount in Local Currency.

=head2 discpercentage

  data_type: 'real'
  is_nullable: 0

Store Discount Percentage.

=head2 discountamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Discount in Local Currency for Item.

=head2 mrp

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store MRP Rate.

=head2 assessvaluepercentage

  data_type: 'real'
  is_nullable: 0

Store Assess Value %.

=head2 assessvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Item Wise Assess Value.

=head2 excpercentage

  data_type: 'real'
  is_nullable: 0

Store Item Wise Excise %.

=head2 exciseamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Item Wise Excise Amount.

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Store Item Wise Salestax Code

=head2 taxrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Item Tax Rate to Calculate Taxable Amount in Case of Itemwise Inclusive Tax

=head2 taxableamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Item Wise Taxable Amount.

=head2 taxamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Item Wise Tax Amount.

=head2 currencyrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Rate on other currency if Currency  is there else same as rate.

=head2 currencyamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount on other currency if currency is there else same as Amount.

=head2 cancelled

  data_type: 'bit'
  is_nullable: 0

True if Quotation has Cancelled.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Keep Value while Editing.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

If Yes then Entry has Locked Item Masters.

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

for Selection

=head2 af_excise1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 af_make

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 af_excise

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 af_tax1

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 af_tax

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 af_packing

  data_type: 'varchar'
  is_nullable: 0
  size: 20

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
  "quotationdocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "quotationbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "quotationdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "quotationseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "quotationdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "quotationitemsno",
  { data_type => "smallint", is_nullable => 0 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "itemcode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "itemsno",
  { data_type => "smallint", is_nullable => 0 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "itemdescription",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
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
  "freequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "itemtype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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
  "amount",
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
  "mrp",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "assessvaluepercentage",
  { data_type => "real", is_nullable => 0 },
  "assessvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "excpercentage",
  { data_type => "real", is_nullable => 0 },
  "exciseamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "taxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "taxrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "taxableamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "taxamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencyrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencyamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "cancelled",
  { data_type => "bit", is_nullable => 0 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
  "af_excise1",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "af_make",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "af_excise",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "af_tax1",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "af_tax",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "af_packing",
  { data_type => "varchar", is_nullable => 0, size => 20 },
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
);

=head1 RELATIONS

=head2 fa_sales_order_register_history

Type: belongs_to

Related object: L<Spectrum::Result::FaSalesOrderRegisterHistory>

=cut

__PACKAGE__->belongs_to(
  "fa_sales_order_register_history",
  "Spectrum::Result::FaSalesOrderRegisterHistory",
  {
    amendmentkey => "amendmentkey",
    branchcode   => "branchcode",
    documentno   => "documentno",
    documenttype => "documenttype",
    documentyear => "documentyear",
    seriescode   => "seriescode",
  },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 fa_sales_order_schedule_histories

Type: has_many

Related object: L<Spectrum::Result::FaSalesOrderScheduleHistory>

=cut

__PACKAGE__->has_many(
  "fa_sales_order_schedule_histories",
  "Spectrum::Result::FaSalesOrderScheduleHistory",
  {
    "foreign.amendmentkey" => "self.amendmentkey",
    "foreign.branchcode"   => "self.branchcode",
    "foreign.documentno"   => "self.documentno",
    "foreign.documenttype" => "self.documenttype",
    "foreign.documentyear" => "self.documentyear",
    "foreign.itemcode"     => "self.itemcode",
    "foreign.itemsno"      => "self.itemsno",
    "foreign.seriescode"   => "self.seriescode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YakHwHsqVd/+/KvLwVE5qA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
