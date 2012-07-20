use utf8;
package Spectrum::Result::FaOsreg;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaOsreg

=head1 DESCRIPTION

Outstanding Register stores records for each transaction plus opening outstanding detail.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaOSReg>

=cut

__PACKAGE__->table("FaOSReg");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Document Year of Document

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code of Document

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Document

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code of Document

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No. of Document

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Date of Document

=head2 documentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class Code of Document

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No.

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Document Year of Reference Document

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch of Reference Document

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Reference Document

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code of Reference Document

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No. of Reference Document

=head2 rdocumentdate

  data_type: 'datetime'
  is_nullable: 0

Date of Reference Document

=head2 rdocumentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class of Reference Document

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Account Code of Document.

=head2 accountsno

  data_type: 'smallint'
  is_nullable: 0

This Field is just link for FaAccountLedger.

=head2 accountbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch code of Account in which you want to make posting. (Same as branch code, only in Cash / Bank Entry it will be change in case of Branch Transfer)

=head2 billno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Bill No. of Document

=head2 billdate

  data_type: 'datetime'
  is_nullable: 0

Bill Date of Document

=head2 orderno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Order No. of Document

=head2 orderdate

  data_type: 'datetime'
  is_nullable: 0

Order Date of Document

=head2 creditperiod

  data_type: 'smallint'
  is_nullable: 0

Credit Period of Document

=head2 costcategorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Cost Category Code of Document

=head2 costcentrecode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Cost Centre Code of Document

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Salesman Code of Document

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Agent Code of Document

=head2 itemcode

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Item Code of Document

=head2 quantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity of Document

=head2 amount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount of Document

=head2 pendingamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Pending Amount of document in case of bill / invoice

=head2 allottedamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Temporary allotted amount of document

=head2 adjustedamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjusted amount of document in case of receipt / payment

=head2 currencycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Currenct code of document

=head2 currencyamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Currency amount of document

=head2 currencypendingamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Currency Pending Amount of Document in case of Bill / Invoice

=head2 currencyexchangerate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Currency Exchange Rate of Document

=head2 currencyallottedamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Temporary alloted currency amount of document

=head2 currencyadjustedamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjusted currency Amont of document in case of receipt / payment

=head2 jvdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Document Year of Journal Voucher passed

=head2 jvbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code of Journal Voucher Passed

=head2 jvdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Journal Voucher Passed

=head2 jvseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code of Journal Voucher Passed

=head2 jvdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No. of Journal Voucher Passed

=head2 jvdocumentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class Code of Journal Voucher Passed

=head2 jvaccountsno

  data_type: 'smallint'
  is_nullable: 0

Account Sno of Journal Voucher Passed

=head2 adjustmentamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Adjustment Amount (extra or less amount received of paid) while adjustment entry

=head2 adjustmentamount1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 1  while adjustment entry

=head2 adjustmentamount2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 2  while adjustment entry

=head2 adjustmentamount3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 3  while adjustment entry

=head2 adjustmentamount4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 4  while adjustment entry

=head2 adjustmentamount5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 5  while adjustment entry

=head2 adjustmentamount6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 6  while adjustment entry

=head2 adjustmentamount7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 7  while adjustment entry

=head2 adjustmentamount8

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 8  while adjustment entry

=head2 adjustmentamount9

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Adjustment Amount passed for account 9  while adjustment entry

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Edit Flag

=head2 lockflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Locked Flag

=head2 package

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Package from Document has entered

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection

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
  "sno",
  { data_type => "smallint", is_nullable => 0 },
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
  "rdocumentdate",
  { data_type => "datetime", is_nullable => 0 },
  "rdocumentclasscode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "accountsno",
  { data_type => "smallint", is_nullable => 0 },
  "accountbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "billno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "billdate",
  { data_type => "datetime", is_nullable => 0 },
  "orderno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "orderdate",
  { data_type => "datetime", is_nullable => 0 },
  "creditperiod",
  { data_type => "smallint", is_nullable => 0 },
  "costcategorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcentrecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "salesmancode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "agentcode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "itemcode",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "quantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "pendingamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "allottedamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustedamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "currencyamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencypendingamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencyexchangerate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencyallottedamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencyadjustedamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "jvdocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "jvbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "jvdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "jvseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "jvdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "jvdocumentclasscode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "jvaccountsno",
  { data_type => "smallint", is_nullable => 0 },
  "adjustmentamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount8",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adjustmentamount9",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "lockflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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

=item * L</accountcode>

=item * L</accountsno>

=item * L</sno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "accountcode",
  "accountsno",
  "sno",
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


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:c3KoL32S0WflZ9C5Ji8zsQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
