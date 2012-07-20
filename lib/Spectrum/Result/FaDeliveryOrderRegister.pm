use utf8;
package Spectrum::Result::FaDeliveryOrderRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaDeliveryOrderRegister

=head1 DESCRIPTION

Delivery Order Register Stores single record for Delivery Order.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaDeliveryOrderRegister>

=cut

__PACKAGE__->table("FaDeliveryOrderRegister");

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

Document Type. "SDO"

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

=head2 consigneecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Consignee Code to where Material has to supply.

=head2 orderno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Customer Order No.

=head2 orderdate

  data_type: 'datetime'
  is_nullable: 0

Customer Order Date

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

=head2 transportername

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of Transporter

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
  "consigneecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "orderno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "orderdate",
  { data_type => "datetime", is_nullable => 0 },
  "refno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "refdate",
  { data_type => "datetime", is_nullable => 0 },
  "pricelistcode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "creditperiod",
  { data_type => "smallint", is_nullable => 0 },
  "transportername",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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

=head2 fa_delivery_order_products

Type: has_many

Related object: L<Spectrum::Result::FaDeliveryOrderProduct>

=cut

__PACKAGE__->has_many(
  "fa_delivery_order_products",
  "Spectrum::Result::FaDeliveryOrderProduct",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kweahdbKMQz0HWNlvYsx8A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
