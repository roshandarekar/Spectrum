use utf8;
package Spectrum::Result::FaTdspaid;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaTdspaid

=head1 DESCRIPTION

TDS Paid stores Detail TDS Deducted & Deposited Challan Detail.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaTDSPaid>

=cut

__PACKAGE__->table("FaTDSPaid");

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

Document Type. PUR,CPU,SDN,SCN,INV,CMO,CCN,CDN,EXP,SNT

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

Date on which Entry has Done

=head2 documentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class Code of Document No.

=head2 tdscode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

TDS Applicable for which TDS Paid

=head2 startdate

  data_type: 'datetime'
  is_nullable: 0

Document Date from which Form has Received

=head2 lastdate

  data_type: 'datetime'
  is_nullable: 0

Document Date Upto Which Form has Received

=head2 challanno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

TDS Challan No.

=head2 challandate

  data_type: 'datetime'
  is_nullable: 0

TDS Challan Date.

=head2 bankcode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

BSR Code of Bank Branch.

=head2 bankname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of Bank Branch where TDS has Deposited.

=head2 challantdsamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total TDS Amount Deposited into Challan.

=head2 challanscamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Surcharge Amount Deposited into Challan.

=head2 challancessamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Cess Amount Deposited into Challan.

=head2 challansecamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total SHEC Amount Deposited into Challan.

=head2 challanacamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Additional Cess Amount Deposited into Challan.

=head2 challaninterestamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Interest Amount Deposited into Challan.

=head2 challanotheramount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Other Amount Deposited into Challan.

=head2 challantotalamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Amount Deposited.

=head2 chequeno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Cheque/DD No.

=head2 chequedate

  data_type: 'datetime'
  is_nullable: 0

Cheque/DD Date.

=head2 challanbookentry

  data_type: 'bit'
  is_nullable: 0

Yes if Not Paid but Directly Debited by Entry.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No.

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Invoice/Bill Document Accounting Year.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Invoice/Bill Company Branch Code.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Invoice/Bill Document Type. PUR,CPU,SDN,SCN,INV,CMO,CCN,CDN,EXP,SNT

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Invoice/Bill Document Series Code.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Invoice/Bill Document No.

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account for which TDS Paid.

=head2 accountsno

  data_type: 'smallint'
  is_nullable: 0

AccountSno of Entry.

=head2 tdson

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount on which TDS has to be deducted

=head2 tdspercentage

  data_type: 'real'
  is_nullable: 0

TDS Percentage to be deducted.

=head2 tdsamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

TDS Amount to be deducted.

=head2 scpercentage

  data_type: 'real'
  is_nullable: 0

Surcharge Percentage.

=head2 scamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Surcharge Amount to be Deducted.

=head2 cesspercentage

  data_type: 'real'
  is_nullable: 0

Cess Percentage.

=head2 cessamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cess Amount to be Deducted.

=head2 secpercentage

  data_type: 'real'
  is_nullable: 0

SHEC Percentage.

=head2 secamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SHEC Amount to be Deducted.

=head2 acpercentage

  data_type: 'real'
  is_nullable: 0

Additional Cess Percentage.

=head2 acamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Cess Amount to be Deducted.

=head2 taxdeposited

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Tax Deposited for Entered Transaction.

=head2 bookentry

  data_type: 'bit'
  is_nullable: 0

Is Transaction by Book Entry.

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
  "tdscode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "startdate",
  { data_type => "datetime", is_nullable => 0 },
  "lastdate",
  { data_type => "datetime", is_nullable => 0 },
  "challanno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "challandate",
  { data_type => "datetime", is_nullable => 0 },
  "bankcode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "bankname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "challantdsamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "challanscamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "challancessamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "challansecamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "challanacamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "challaninterestamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "challanotheramount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "challantotalamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "chequeno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "chequedate",
  { data_type => "datetime", is_nullable => 0 },
  "challanbookentry",
  { data_type => "bit", is_nullable => 0 },
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
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountsno",
  { data_type => "smallint", is_nullable => 0 },
  "tdson",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "tdspercentage",
  { data_type => "real", is_nullable => 0 },
  "tdsamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "scpercentage",
  { data_type => "real", is_nullable => 0 },
  "scamount",
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
  "secpercentage",
  { data_type => "real", is_nullable => 0 },
  "secamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "acpercentage",
  { data_type => "real", is_nullable => 0 },
  "acamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "taxdeposited",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "bookentry",
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
);

=head1 PRIMARY KEY

=over 4

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

=item * L</sno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "sno",
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3pPNlnC0bST8L2DDRauUYw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
