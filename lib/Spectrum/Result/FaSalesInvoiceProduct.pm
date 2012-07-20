use utf8;
package Spectrum::Result::FaSalesInvoiceProduct;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSalesInvoiceProduct

=head1 DESCRIPTION

Sales Invoice Products stores product details of Sales Invoice, Cash Memo, Debit & Credit Note to Customer.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSalesInvoiceProducts>

=cut

__PACKAGE__->table("FaSalesInvoiceProducts");

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

=head2 challandocumentyear

  data_type: 'smallint'
  is_nullable: 0

Delivery Challan Document Accounting Year.

=head2 challanbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Delivery Challan Company Branch Code.

=head2 challandocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Delivery Challan Document Type. "CLN"

=head2 challanseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Delivery Challan Document Series Code.

=head2 challandocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Delivery Challan Document No.

=head2 challanitemsno

  data_type: 'smallint'
  is_nullable: 0

Delivery Challan Item Serial No. which can't change once saved.

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

=head2 dodocumentyear

  data_type: 'smallint'
  is_nullable: 0

Delivery Order Document Accounting Year.

=head2 dobranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Delivery Order Company Branch Code.

=head2 dodocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Delivery Order Document Type. "SDO"

=head2 doseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Delivery Order Document Series Code.

=head2 dodocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Delivery Order Document No.

=head2 doitemsno

  data_type: 'smallint'
  is_nullable: 0

Delivery Order Item Serial No. which can't change once saved.

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

Ref.Document Year Ag. Which Issue has done for INV/CMO/CDN. For CCN only Purchase Docuent Year to Pickup VAT & RG23D Details.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Ref.Branch Code Ag. Which Issue has done  for  INV/CMO/CDN. For CCN only Purchase Docuent Year to Pickup VAT & RG23D Details.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Ref.Document Type Ag. Which Issue has done  for  INV/CMO/CDN. For CCN only Purchase Docuent Year to Pickup VAT & RG23D Details.

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Ref.Series Code Ag. Which Issue has done  for INV/CMO/CDN. For CCN only Purchase Docuent Year to Pickup VAT & RG23D Details.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Ref.Document No Ag. Which Issue has done for INV/CMO/CDN. For CCN only Purchase Docuent Year to Pickup VAT & RG23D Details.

=head2 ritemsno

  data_type: 'smallint'
  is_nullable: 0

Ref.Item Sno Ag. Which Issue has done  for INV/CMO/CDN. For CCN only Purchase Docuent Year to Pickup VAT & RG23D Details.

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

=head2 salereturn

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Store S for Sales, R for Return

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

=head2 sndocumentyear

  data_type: 'smallint'
  is_nullable: 0

SaleNote Document Accounting Year.

=head2 snbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

SaleNote Company Branch Code.

=head2 sndocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

SaleNote Document Type. "SNT"

=head2 snseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

SaleNote Document Series Code.

=head2 sndocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

SaleNote Document No.

=head2 snitemsno

  data_type: 'smallint'
  is_nullable: 0

SaleNote Item Serial No. which can't change once saved.

=head2 purchasetaxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Purchase Tax Code for Credit Note Entry. (VAT Purpose)

=head2 purchasetaxableamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Purchase Taxable Amount for Credit Note Entry. (VAT Purpose)

=head2 purchasetaxamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Purchase Tax Amount for Credit Note Entry. (VAT Purpose)

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
  "challandocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "challanbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "challandocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "challanseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "challandocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "challanitemsno",
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
  "dodocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "dobranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "dodocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "doseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "dodocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "doitemsno",
  { data_type => "smallint", is_nullable => 0 },
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
  "salereturn",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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
  "sndocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "snbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "sndocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "snseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sndocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "snitemsno",
  { data_type => "smallint", is_nullable => 0 },
  "purchasetaxcode",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "purchasetaxableamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "purchasetaxamount",
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

=head2 fa_sales_invoice_register

Type: belongs_to

Related object: L<Spectrum::Result::FaSalesInvoiceRegister>

=cut

__PACKAGE__->belongs_to(
  "fa_sales_invoice_register",
  "Spectrum::Result::FaSalesInvoiceRegister",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hDmq+wm4j5MVSGCsscpH8A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
