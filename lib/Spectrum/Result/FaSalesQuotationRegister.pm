use utf8;
package Spectrum::Result::FaSalesQuotationRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSalesQuotationRegister

=head1 DESCRIPTION

Sales Quotation Register Stores single record for Sales Quotation

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSalesQuotationRegister>

=cut

__PACKAGE__->table("FaSalesQuotationRegister");

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

Document Type. "SQT"

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

Party (Customer) Account Code.

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Sales Man Code.

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Agent Code.

=head2 refno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Reference No. for Information only.

=head2 refdate

  data_type: 'datetime'
  is_nullable: 0

Reference Date for Information only.

=head2 pricelistcode

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Store Effective Price List Code.

=head2 creditperiod

  data_type: 'smallint'
  is_nullable: 0

Credit Period in Days.

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

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage3

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage4

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage5

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage6

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage7

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage8

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage9

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage10

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage11

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage12

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage13

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage14

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage15

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage16

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage17

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage18

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage19

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 percentage20

  data_type: 'real'
  is_nullable: 0

Store Percentage for Amount 1 defined in Entry Setup.

=head2 grossamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Grossl Amount  in Local Currency

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

=head2 af_reight

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 af_rem1

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 af_payment

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 af_rem2

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 af_del

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 af_rem3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 af_price

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 af_person

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 af_kindattn

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 af_tv

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
  "salesmancode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "agentcode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "refno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "refdate",
  { data_type => "datetime", is_nullable => 0 },
  "pricelistcode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "creditperiod",
  { data_type => "smallint", is_nullable => 0 },
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
  "af_reight",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "af_rem1",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "af_payment",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "af_rem2",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "af_del",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "af_rem3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "af_price",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "af_person",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "af_kindattn",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "af_tv",
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

=head2 fa_sales_quotation_products

Type: has_many

Related object: L<Spectrum::Result::FaSalesQuotationProduct>

=cut

__PACKAGE__->has_many(
  "fa_sales_quotation_products",
  "Spectrum::Result::FaSalesQuotationProduct",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FltvOJZ7qTQxmJN0Ulkzxw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
