use utf8;
package Spectrum::Result::FaPurchaseBillProduct;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaPurchaseBillProduct

=head1 DESCRIPTION

Purchase Bill Products stores product details of Purchase Bill/ Cash Purchase / Credit Note to Supplier / Debit Note to Supplier.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaPurchaseBillProducts>

=cut

__PACKAGE__->table("FaPurchaseBillProducts");

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

Document Type. "GIN"

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

=head2 inwarddocumentyear

  data_type: 'smallint'
  is_nullable: 0

Goods Inward Note Document Accounting Year.

=head2 inwardbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Goods Inward Company Branch Code.

=head2 inwarddocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Goods Inward Document Type. "GIN"

=head2 inwardseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Goods Inward Document Series Code.

=head2 inwarddocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Inward Document No.

=head2 inwarditemsno

  data_type: 'smallint'
  is_nullable: 0

Inward Item Serial No. which can't change once saved.

=head2 orderdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Order Document Accounting Year.

=head2 orderbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Order Company Branch Code.

=head2 orderdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Order Document Type. "PUO"

=head2 orderseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Order Document Series Code.

=head2 orderdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Order Document No.

=head2 orderitemsno

  data_type: 'smallint'
  is_nullable: 0

Order Item Serial No. which can't change once saved.

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
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code.

=head2 itemsno

  data_type: 'smallint'
  is_nullable: 0

Item Serial No. which can't change once saved.

=head2 valuation

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Store Item Valuation Like S,W,F,L,A,N,B,P,G

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

=head2 batchserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Batch/Serial No. of Item.

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Ref.Document Year Ag. Which Issue has done for SDN.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Ref.Branch Code Ag. Which Issue has done  for SDN.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Ref.Document Type Ag. Which Issue has done  for SDN.

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Ref.Series Code Ag. Which Issue has done  for SDN.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Ref.Document No Ag. Which Issue has done for SDN.

=head2 ritemsno

  data_type: 'smallint'
  is_nullable: 0

Ref.Item Sno Ag. Which Issue has done  for SDN.

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

=head2 cesspercentage

  data_type: 'real'
  is_nullable: 0

Cess % of Item.

=head2 cessamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cess Amount of Item.

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

=head2 grossamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Distributed Gross Amount for the Item.

=head2 currencygrossamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Distributed Gross Amount in Other Currency for the Item required for Account Posting.

=head2 costrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Valuation Rate of Item.

=head2 costamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Distributed Cost Amount for the Item.

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Account Code in Case Item Wise Posting is TRUE in Calculation setup.

=head2 commpercentage

  data_type: 'real'
  is_nullable: 0

Salesman Commission Percentage on Item.

=head2 commissionamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Salesman Commission Amount on Item.

=head2 excisecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Excise Tariff Master Code (Modvat Package)

=head2 rg23ipageno

  data_type: 'integer'
  is_nullable: 0

RG23-I Page No. (Modvat Package)

=head2 rg23isno

  data_type: 'integer'
  is_nullable: 0

RG23-I Serial No. (Modvat Package)

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
  "inwarddocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "inwardbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "inwarddocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "inwardseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "inwarddocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "inwarditemsno",
  { data_type => "smallint", is_nullable => 0 },
  "orderdocumentyear",
  { data_type => "smallint", is_nullable => 0 },
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
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "itemsno",
  { data_type => "smallint", is_nullable => 0 },
  "valuation",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "batchserialno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "rdocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "rbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "rdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "rseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "rdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "ritemsno",
  { data_type => "smallint", is_nullable => 0 },
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
  "cesspercentage",
  { data_type => "real", is_nullable => 0 },
  "cessamount",
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
  "grossamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencygrossamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "costrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "costamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "commpercentage",
  { data_type => "real", is_nullable => 0 },
  "commissionamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "excisecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "rg23ipageno",
  { data_type => "integer", is_nullable => 0 },
  "rg23isno",
  { data_type => "integer", is_nullable => 0 },
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
);

=head1 PRIMARY KEY

=over 4

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

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
  "itemcode",
  "itemsno",
);

=head1 RELATIONS

=head2 accountcode

Type: belongs_to

Related object: L<Spectrum::Result::FaAccountMaster>

=cut

__PACKAGE__->belongs_to(
  "accountcode",
  "Spectrum::Result::FaAccountMaster",
  { accountcode => "accountcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 fa_purchase_bill_register

Type: belongs_to

Related object: L<Spectrum::Result::FaPurchaseBillRegister>

=cut

__PACKAGE__->belongs_to(
  "fa_purchase_bill_register",
  "Spectrum::Result::FaPurchaseBillRegister",
  {
    branchcode   => "branchcode",
    documentno   => "documentno",
    documenttype => "documenttype",
    documentyear => "documentyear",
    seriescode   => "seriescode",
  },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Zv+AIrC8qDU3QSVHiUngHw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
