use utf8;
package Spectrum::Result::FaItemLedger;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemLedger

=head1 DESCRIPTION

Item Ledger store each record of Item Transaction which effects in stock. In case of Material Issue Note if user enter Issue & Received Stores then it stores two record for each items.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemLedger>

=cut

__PACKAGE__->table("FaItemLedger");

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

Document Type. GIN,CLN,PUR etc.

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

Document Class Code for Type.

=head2 entrytype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Entry Type (GIP - Purchase, GIL - Labour Work, GIR - Goods Inward Customer Return)

=head2 refno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Reference No. for Information only.

=head2 refdate

  data_type: 'datetime'
  is_nullable: 0

Reference Date for Information only.

=head2 billno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Supplier Bill/Party Credit Note/Debit Note No.

=head2 billdate

  data_type: 'datetime'
  is_nullable: 0

Supplier Bill/Party Credit Note/Debit Note Date.

=head2 costcategorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Cost Category Code of Entry.

=head2 costcentrecode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Cost Centre Code of Entry.

=head2 departmentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Department Code of Entry.

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Customer or Supplier Account Code.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No.

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code of Transaction.

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code of Transaction.

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

=head2 itemtype

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Store C for Chargable, F for Free, R for Replacement, S for Schame.

=head2 batchserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Batch/Serial No. of Transaction of Item.

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Ref. Document Accounting Year Ag. which issue is made for Bill-Wise Stock.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Ref. Company Branch Code Ag. which issue is made  for  Bill-Wise Stock.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Ref. Document Type. GIN,CLN,PUR etc. Ag. which issue is made for  Bill-Wise Stock.

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Ref. Document Series Code Ag. which issue is made for  Bill-Wise Stock.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Ref. Document No. Ag. Which Issue is made  for Bill-Wise Stock.

=head2 ritemsno

  data_type: 'smallint'
  is_nullable: 0

Ref. Item Sno Ag. which issue is made for bill wise stock.

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

=head2 entryfreequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Free Quantity Entered in Entry

=head2 entryrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Data Entry Rate of Item.

=head2 entryrateon

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Store M for Main Unit & O for Other Unit.

=head2 entryper

  data_type: 'integer'
  is_nullable: 0

Data Entry Rate on How many unit.

=head2 entryamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount of Data Entry.

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

=head2 rate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Valuation Rate on Main Unit.

=head2 per

  data_type: 'integer'
  is_nullable: 0

Valuation Rate on How many unit.

=head2 amount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Valuation Amount

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Tax Code of Transaction.

=head2 taxableamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Taxable Amount of Transaction.

=head2 taxamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Tax Amount of Transaction.

=head2 narration

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Multi Line Narration to Print in Ledger.

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

=head2 refdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refdocumentdate

  data_type: 'datetime'
  is_nullable: 0

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

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

for Selection

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
  "entrytype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "refno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "refdate",
  { data_type => "datetime", is_nullable => 0 },
  "billno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "billdate",
  { data_type => "datetime", is_nullable => 0 },
  "costcategorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcentrecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "departmentcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
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
  "itemtype",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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
  "entryfreequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "entryrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "entryrateon",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "entryper",
  { data_type => "integer", is_nullable => 0 },
  "entryamount",
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
  "rate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "per",
  { data_type => "integer", is_nullable => 0 },
  "amount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "taxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
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
  "narration",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
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
  "refdocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "refbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "refdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "refseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "refdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "refdocumentdate",
  { data_type => "datetime", is_nullable => 0 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZdcpJ4SMegQl/Ph+A3/Kjg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
