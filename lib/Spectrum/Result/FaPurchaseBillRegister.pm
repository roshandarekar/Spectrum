use utf8;
package Spectrum::Result::FaPurchaseBillRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaPurchaseBillRegister

=head1 DESCRIPTION

Purchase Bill Register Stores single record for Purchase Bill / Cash Purchase / Supplier Debit Note / Supplier Credit Note.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaPurchaseBillRegister>

=cut

__PACKAGE__->table("FaPurchaseBillRegister");

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

Document Type. "PUR","CPU","SCN","SDN"

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

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Party (Supplier) Account Code.

=head2 billno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Supplier Bill/Party Credit Note/Debit Note No.

=head2 billdate

  data_type: 'datetime'
  is_nullable: 0

Supplier Bill/Party Credit Note/Debit Note Date.

=head2 addresschangerequired

  data_type: 'bit'
  is_nullable: 0

TRUE if user is required to Enter or change Address of Supplier for Cash Purchase or Debit Note. Stored in FaPurchaseBillAddressRegister Table.

=head2 gatepassdetails

  data_type: 'bit'
  is_nullable: 0

TRUE if Gate Pass Detail entered. SDN Detail will stored in FaPurchaseBillGatepassRegister.

=head2 purchasefrom

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Store M)anufacturer, D)ealer, I)mporter, S)elf Importer, C)onsignment Depo.

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Agent Code.

=head2 consigneecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Consignee Code to where Material has to supply.

=head2 pricelistcode

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Store Effective Price List Code.

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Sales Man Code.

=head2 commpercentage

  data_type: 'real'
  is_nullable: 0

Salesman Commission Percentage.

=head2 commissionamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Salesman Commission Amount.

=head2 creditperiod

  data_type: 'smallint'
  is_nullable: 0

Credit Period of Bill in Days.

=head2 transportername

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of Transporter

=head2 lrno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

L.R./R.R. No. of Transporter

=head2 lrdate

  data_type: 'datetime'
  is_nullable: 0

L.R./R.R. Date of Transpoter

=head2 vehicleno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Vehicle No. in Which Goods Delivered.

=head2 totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Quantity in Main Unit of Invoice Required in Sales Register.

=head2 totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Quantity in Other Unit of Invoice Required in Sales Register.

=head2 netamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Net Amount in Local Currency Total of Product Amount.

=head2 discpercentage

  data_type: 'real'
  is_nullable: 0

Store Discount Percentage.

=head2 discountamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Discount in Local Currency  Amount.

=head2 assessvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Assess Value on which Excise will be charge in Local Currency

=head2 excpercentage

  data_type: 'real'
  is_nullable: 0

Store Excise Percentage.

=head2 exciseamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Excise Amount  in Local Currency

=head2 cesspercentage

  data_type: 'real'
  is_nullable: 0

Store Cess Percentage on Excise Amount.

=head2 cessamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Cess Amount in Local Currency.

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Store Tax Code.

=head2 taxableamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Taxable Amount on which Tax will be charge  in Local Currency

=head2 taxamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Sales Tax Amount  in Local Currency

=head2 amount1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 amount2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 amount3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency  defined in Entry Setup.

=head2 amount4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount   in Local Currency defined in Entry Setup.

=head2 amount5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount8

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 amount9

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount10

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount11

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount12

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 amount13

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount14

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 amount15

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount16

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 amount17

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount in Local Currency  defined in Entry Setup.

=head2 amount18

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 amount19

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 amount20

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Amount  in Local Currency defined in Entry Setup.

=head2 percentage1

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage2

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 2 defined in Entry Setup.

=head2 percentage3

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 3 defined in Entry Setup.

=head2 percentage4

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 4 defined in Entry Setup.

=head2 percentage5

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 5 defined in Entry Setup.

=head2 percentage6

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 6 defined in Entry Setup.

=head2 percentage7

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 7 defined in Entry Setup.

=head2 percentage8

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 8 defined in Entry Setup.

=head2 percentage9

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 9 defined in Entry Setup.

=head2 percentage10

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 10 defined in Entry Setup.

=head2 percentage11

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 11 defined in Entry Setup.

=head2 percentage12

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 12 defined in Entry Setup.

=head2 percentage13

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 13 defined in Entry Setup.

=head2 percentage14

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 14 defined in Entry Setup.

=head2 percentage15

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 15 defined in Entry Setup.

=head2 percentage16

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 16 defined in Entry Setup.

=head2 percentage17

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 17 defined in Entry Setup.

=head2 percentage18

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 18 defined in Entry Setup.

=head2 percentage19

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 19 defined in Entry Setup.

=head2 percentage20

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 20 defined in Entry Setup.

=head2 grossamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Grossl Amount  in Local Currency

=head2 accountcode1

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount1   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode2

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount2   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode3

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount3   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode4

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount4   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode5

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount5   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode6

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount6   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode7

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount7   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode8

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount8   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode9

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount9   if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode10

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount10 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode11

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount11 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode12

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount12 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode13

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount13 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode14

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount14 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode15

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount15 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode16

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount16 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode17

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount17 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode18

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount18 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode19

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount19 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode20

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for Amount20 if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode21

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for NetAmount if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode22

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for DiscountAmount if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode23

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for ExciseAmount if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode24

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for CessAmount if Gross Posting is Not Defined in Calculation Setup.

=head2 accountcode25

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for TaxAmount if Gross Posting is Not Defined in Calculation Setup.

=head2 grossaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Account Code for GrossAmount if Gross Posting is Defined in Calculation Setup.

=head2 currencycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Store Currency Code in case value in Different Currency.

=head2 currencyexchangerate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Currency Exchange Rate for this entry.

=head2 currencygrossamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Gross amount in Currency entered.

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

=head2 factorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Supplier Factory Code for (Modvat Package)

=head2 rg23iipageno

  data_type: 'integer'
  is_nullable: 0

RG23-II Page No. (Modvat Package)

=head2 rg23iisno

  data_type: 'integer'
  is_nullable: 0

RG23-II Serial No. (Modvat Package)

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

=head2 af_oc

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

=head2 af_no_bag

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

=head2 af_bc

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

=head2 af_rec_dt

  data_type: 'datetime'
  is_nullable: 0

=head2 af_il

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 af_bed

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

=head2 af_cvd

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

=head2 af_lc_no

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 af_lc_dt

  data_type: 'datetime'
  is_nullable: 0

=head2 af_depb

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

=head2 af_cf

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

=head2 af_lc_amt

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

=head2 af_te

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

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
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "billno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "billdate",
  { data_type => "datetime", is_nullable => 0 },
  "addresschangerequired",
  { data_type => "bit", is_nullable => 0 },
  "gatepassdetails",
  { data_type => "bit", is_nullable => 0 },
  "purchasefrom",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "agentcode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "consigneecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "pricelistcode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "salesmancode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "commpercentage",
  { data_type => "real", is_nullable => 0 },
  "commissionamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "creditperiod",
  { data_type => "smallint", is_nullable => 0 },
  "transportername",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "lrno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "lrdate",
  { data_type => "datetime", is_nullable => 0 },
  "vehicleno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "netamount",
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
  "amount1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount8",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount9",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount10",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount11",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount12",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount13",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount14",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount15",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount16",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount17",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount18",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount19",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount20",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "percentage1",
  { data_type => "real", is_nullable => 0 },
  "percentage2",
  { data_type => "real", is_nullable => 0 },
  "percentage3",
  { data_type => "real", is_nullable => 0 },
  "percentage4",
  { data_type => "real", is_nullable => 0 },
  "percentage5",
  { data_type => "real", is_nullable => 0 },
  "percentage6",
  { data_type => "real", is_nullable => 0 },
  "percentage7",
  { data_type => "real", is_nullable => 0 },
  "percentage8",
  { data_type => "real", is_nullable => 0 },
  "percentage9",
  { data_type => "real", is_nullable => 0 },
  "percentage10",
  { data_type => "real", is_nullable => 0 },
  "percentage11",
  { data_type => "real", is_nullable => 0 },
  "percentage12",
  { data_type => "real", is_nullable => 0 },
  "percentage13",
  { data_type => "real", is_nullable => 0 },
  "percentage14",
  { data_type => "real", is_nullable => 0 },
  "percentage15",
  { data_type => "real", is_nullable => 0 },
  "percentage16",
  { data_type => "real", is_nullable => 0 },
  "percentage17",
  { data_type => "real", is_nullable => 0 },
  "percentage18",
  { data_type => "real", is_nullable => 0 },
  "percentage19",
  { data_type => "real", is_nullable => 0 },
  "percentage20",
  { data_type => "real", is_nullable => 0 },
  "grossamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "accountcode1",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode2",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode3",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode4",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode5",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode6",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode7",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode8",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode9",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode10",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode11",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode12",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode13",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode14",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode15",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode16",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode17",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode18",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode19",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode20",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode21",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode22",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode23",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode24",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode25",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "grossaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "currencycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "currencyexchangerate",
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
  "factorycode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "rg23iipageno",
  { data_type => "integer", is_nullable => 0 },
  "rg23iisno",
  { data_type => "integer", is_nullable => 0 },
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
  "af_oc",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "af_no_bag",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "af_bc",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "af_rec_dt",
  { data_type => "datetime", is_nullable => 0 },
  "af_il",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "af_bed",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "af_cvd",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "af_lc_no",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "af_lc_dt",
  { data_type => "datetime", is_nullable => 0 },
  "af_depb",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "af_cf",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "af_lc_amt",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "af_te",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
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

=head2 fa_purchase_bill_address_register

Type: might_have

Related object: L<Spectrum::Result::FaPurchaseBillAddressRegister>

=cut

__PACKAGE__->might_have(
  "fa_purchase_bill_address_register",
  "Spectrum::Result::FaPurchaseBillAddressRegister",
  {
    "foreign.branchcode"   => "self.branchcode",
    "foreign.documentno"   => "self.documentno",
    "foreign.documenttype" => "self.documenttype",
    "foreign.documentyear" => "self.documentyear",
    "foreign.seriescode"   => "self.seriescode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_bill_gate_pass_register

Type: might_have

Related object: L<Spectrum::Result::FaPurchaseBillGatePassRegister>

=cut

__PACKAGE__->might_have(
  "fa_purchase_bill_gate_pass_register",
  "Spectrum::Result::FaPurchaseBillGatePassRegister",
  {
    "foreign.branchcode"   => "self.branchcode",
    "foreign.documentno"   => "self.documentno",
    "foreign.documenttype" => "self.documenttype",
    "foreign.documentyear" => "self.documentyear",
    "foreign.seriescode"   => "self.seriescode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_bill_products

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseBillProduct>

=cut

__PACKAGE__->has_many(
  "fa_purchase_bill_products",
  "Spectrum::Result::FaPurchaseBillProduct",
  {
    "foreign.branchcode"   => "self.branchcode",
    "foreign.documentno"   => "self.documentno",
    "foreign.documenttype" => "self.documenttype",
    "foreign.documentyear" => "self.documentyear",
    "foreign.seriescode"   => "self.seriescode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pwLNG5Gd9eq1e588YVDOBw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
