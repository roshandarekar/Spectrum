use utf8;
package Spectrum::Result::FaBankMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaBankMaster

=head1 DESCRIPTION

Bank Master Store Balance As Per Bank Statement, Payslip & Cheque Printing Definations.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaBankMaster>

=cut

__PACKAGE__->table("FaBankMaster");

=head1 ACCESSORS

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Bank Account Code of Account Master

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Bank Branch code of Branch Master

=head2 bankname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Name of Bank

=head2 bankbranch

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Bank Branch

=head2 startrecodate

  data_type: 'datetime'
  is_nullable: 0

Start Reconciliation Date.

=head2 lastchequeno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Last Cheque No. Entered

=head2 openingbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance as per bank statement

=head2 month1total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 1.

=head2 month2total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 2.

=head2 month3total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 3.

=head2 month4total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 4.

=head2 month5total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 5.

=head2 month6total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 6.

=head2 month7total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 7.

=head2 month8total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 8.

=head2 month9total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 9.

=head2 month10total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 10.

=head2 month11total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 11.

=head2 month12total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 12.

=head2 month13total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 13.

=head2 month14total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 14.

=head2 month15total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 15.

=head2 month16total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 16.

=head2 month17total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 17.

=head2 month18total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 18.

=head2 month19total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 19.

=head2 month20total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 20.

=head2 month21total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 21.

=head2 month22total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 22.

=head2 month23total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 23.

=head2 month24total

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction summary amount of month 24.

=head2 currentbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Bank as per Bank Statement

=head2 intpercentage

  data_type: 'real'
  is_nullable: 0

Interest Percentage charge by bank on OD or CC

=head2 printpayinslip

  data_type: 'bit'
  is_nullable: 0

True if Pay-in-slip to be print for this bank

=head2 printcheque

  data_type: 'bit'
  is_nullable: 0

True if Cheque to be print of this bank

=head2 printdocumentseries

  data_type: 'bit'
  is_nullable: 0

True if Document Series to be print on pay-in-slip

=head2 accounttype

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Bank Account Type (Saving, Current etc)

=head2 accountno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Bank Account No.

=head2 printentryno

  data_type: 'bit'
  is_nullable: 0

True if Document No. to be print on pay-in-slip

=head2 printnarration

  data_type: 'bit'
  is_nullable: 0

True if Narration to be print on pay-in-slip

=head2 printpartyname

  data_type: 'bit'
  is_nullable: 0

True if Party name to be print on pay-in-slip

=head2 printplace

  data_type: 'bit'
  is_nullable: 0

True if Party Place to be print on pay-in-slip

=head2 sliplength

  data_type: 'smallint'
  is_nullable: 0

Length of pay-in-slip in lines

=head2 chequelength

  data_type: 'smallint'
  is_nullable: 0

Length of Cheque

=head2 chequepagelength

  data_type: 'smallint'
  is_nullable: 0

Page Length of Cheque in lines

=head2 printletter

  data_type: 'bit'
  is_nullable: 0

True if Cheque Forwarding Letter to be print with Cheque

=head2 letterlength

  data_type: 'smallint'
  is_nullable: 0

Length of Letter in lines

=head2 printedletterhead

  data_type: 'bit'
  is_nullable: 0

True if Letter to be print on preprinted letter head

=head2 printdraweeaddress

  data_type: 'bit'
  is_nullable: 0

True if Drawee Address to be print on letter

=head2 startletterrow

  data_type: 'smallint'
  is_nullable: 0

Start Line from which letter to start print

=head2 printaccountpayee

  data_type: 'bit'
  is_nullable: 0

True to Print Account Payee on Cheque

=head2 accountpayeeword

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Word of Account Payee to Print on cheque

=head2 printcompanyname

  data_type: 'bit'
  is_nullable: 0

True to Print our company name of cheque (e.g. For MICROBRAIN Computers Pvt. Ltd) for Signature

=head2 chequecompanyname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Company Name to be print on Cheque

=head2 chequesignatory

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Signatory word to be print on cheque (Partner / Proprietor / Director etc)

=head2 daterow

  data_type: 'smallint'
  is_nullable: 0

Line No. at which date has to be print on cheque

=head2 datecol

  data_type: 'smallint'
  is_nullable: 0

Column at which date has to be print on cheque

=head2 yearrow

  data_type: 'smallint'
  is_nullable: 0

Line No. at which Year has to be print on cheque

=head2 yearcol

  data_type: 'smallint'
  is_nullable: 0

Column at which year has to be print on cheque

=head2 draweeline1row

  data_type: 'smallint'
  is_nullable: 0

Line No. at which drawee line 1 has to be print on cheque

=head2 draweeline1col

  data_type: 'smallint'
  is_nullable: 0

Column at which drawee line 1 has to be print on cheque

=head2 draweeline1length

  data_type: 'smallint'
  is_nullable: 0

Length of drawee line 1

=head2 draweeline2row

  data_type: 'smallint'
  is_nullable: 0

Line No. at which drawee line 2 has to be print on cheque

=head2 draweeline2col

  data_type: 'smallint'
  is_nullable: 0

column at which drawee line 2 has to be print on cheque

=head2 draweeline2length

  data_type: 'smallint'
  is_nullable: 0

Lengh of drawee line 2

=head2 amountwordline1row

  data_type: 'smallint'
  is_nullable: 0

Line No. at which amount in word line 1 has to be print on cheque

=head2 amountwordline1col

  data_type: 'smallint'
  is_nullable: 0

Column at which amount in word line 1 has to be print on cheque

=head2 amountwordline1length

  data_type: 'smallint'
  is_nullable: 0

Length of Amount in word line 1

=head2 amountwordline2row

  data_type: 'smallint'
  is_nullable: 0

Line No. at which amount in word line 2 has to be print on cheque

=head2 amountwordline2col

  data_type: 'smallint'
  is_nullable: 0

Column at which amount in word line 2 has to be print on cheque

=head2 amountwordline2length

  data_type: 'smallint'
  is_nullable: 0

Length of Amount in word Line 2

=head2 amountrow

  data_type: 'smallint'
  is_nullable: 0

Line No. at which amount in figure has to be print on cheque

=head2 amountcol

  data_type: 'smallint'
  is_nullable: 0

Column at which amount in figure has to be print on cheque

=head2 amountlength

  data_type: 'smallint'
  is_nullable: 0

Length if Amount in Figure

=head2 accountpayeerow

  data_type: 'smallint'
  is_nullable: 0

Line No. at which account payee has to be print on cheque

=head2 accountpayeecol

  data_type: 'smallint'
  is_nullable: 0

Column at which account payee has to be print on cheque

=head2 companynamerow

  data_type: 'smallint'
  is_nullable: 0

Line No. at which company name has to be print on cheque

=head2 companynamecol

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Column at which company name has to be print on cheque

=head2 signatoryrow

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Line No. at which signatory has to be print on cheque

=head2 signatorycol

  data_type: 'smallint'
  is_nullable: 0

Column at which signatory has to be print on cheque

=head2 printtrailingcharacter

  data_type: 'bit'
  is_nullable: 0

Print Line After Drawee Name & Amount in Word.

=head2 printleadingcharacter

  data_type: 'bit'
  is_nullable: 0

Print * Before Amount.

=head2 lettertop1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Text Line 1 to be print on top of letter.

=head2 lettertop2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Text Line 2 to be print on top of letter.

=head2 lettertop3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Text Line 3 to be print on top of letter.

=head2 lettertop4

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Text Line 4 to be print on top of letter.

=head2 letterbottom1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Text Line 1 to be print on bottom of letter.

=head2 letterbottom2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Text Line 2 to be print on bottom of letter.

=head2 letterbottom3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Text Line 3 to be print on bottom of letter.

=head2 letterbottom4

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Text Line 4 to be print on bottom of letter.

=head2 lettersignatory

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Signatory to be print on letter

=head2 locked

  data_type: 'bit'
  is_nullable: 0

True if Locked

=head2 used

  data_type: 'bit'
  is_nullable: 0

True if Used

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date of Creation

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection

=cut

__PACKAGE__->add_columns(
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "bankname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "bankbranch",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "startrecodate",
  { data_type => "datetime", is_nullable => 0 },
  "lastchequeno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "openingbalance",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month1total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month2total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month3total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month4total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month5total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month6total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month7total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month8total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month9total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month10total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month11total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month12total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month13total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month14total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month15total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month16total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month17total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month18total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month19total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month20total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month21total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month22total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month23total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month24total",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currentbalance",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "intpercentage",
  { data_type => "real", is_nullable => 0 },
  "printpayinslip",
  { data_type => "bit", is_nullable => 0 },
  "printcheque",
  { data_type => "bit", is_nullable => 0 },
  "printdocumentseries",
  { data_type => "bit", is_nullable => 0 },
  "accounttype",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "accountno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "printentryno",
  { data_type => "bit", is_nullable => 0 },
  "printnarration",
  { data_type => "bit", is_nullable => 0 },
  "printpartyname",
  { data_type => "bit", is_nullable => 0 },
  "printplace",
  { data_type => "bit", is_nullable => 0 },
  "sliplength",
  { data_type => "smallint", is_nullable => 0 },
  "chequelength",
  { data_type => "smallint", is_nullable => 0 },
  "chequepagelength",
  { data_type => "smallint", is_nullable => 0 },
  "printletter",
  { data_type => "bit", is_nullable => 0 },
  "letterlength",
  { data_type => "smallint", is_nullable => 0 },
  "printedletterhead",
  { data_type => "bit", is_nullable => 0 },
  "printdraweeaddress",
  { data_type => "bit", is_nullable => 0 },
  "startletterrow",
  { data_type => "smallint", is_nullable => 0 },
  "printaccountpayee",
  { data_type => "bit", is_nullable => 0 },
  "accountpayeeword",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "printcompanyname",
  { data_type => "bit", is_nullable => 0 },
  "chequecompanyname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "chequesignatory",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "daterow",
  { data_type => "smallint", is_nullable => 0 },
  "datecol",
  { data_type => "smallint", is_nullable => 0 },
  "yearrow",
  { data_type => "smallint", is_nullable => 0 },
  "yearcol",
  { data_type => "smallint", is_nullable => 0 },
  "draweeline1row",
  { data_type => "smallint", is_nullable => 0 },
  "draweeline1col",
  { data_type => "smallint", is_nullable => 0 },
  "draweeline1length",
  { data_type => "smallint", is_nullable => 0 },
  "draweeline2row",
  { data_type => "smallint", is_nullable => 0 },
  "draweeline2col",
  { data_type => "smallint", is_nullable => 0 },
  "draweeline2length",
  { data_type => "smallint", is_nullable => 0 },
  "amountwordline1row",
  { data_type => "smallint", is_nullable => 0 },
  "amountwordline1col",
  { data_type => "smallint", is_nullable => 0 },
  "amountwordline1length",
  { data_type => "smallint", is_nullable => 0 },
  "amountwordline2row",
  { data_type => "smallint", is_nullable => 0 },
  "amountwordline2col",
  { data_type => "smallint", is_nullable => 0 },
  "amountwordline2length",
  { data_type => "smallint", is_nullable => 0 },
  "amountrow",
  { data_type => "smallint", is_nullable => 0 },
  "amountcol",
  { data_type => "smallint", is_nullable => 0 },
  "amountlength",
  { data_type => "smallint", is_nullable => 0 },
  "accountpayeerow",
  { data_type => "smallint", is_nullable => 0 },
  "accountpayeecol",
  { data_type => "smallint", is_nullable => 0 },
  "companynamerow",
  { data_type => "smallint", is_nullable => 0 },
  "companynamecol",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "signatoryrow",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "signatorycol",
  { data_type => "smallint", is_nullable => 0 },
  "printtrailingcharacter",
  { data_type => "bit", is_nullable => 0 },
  "printleadingcharacter",
  { data_type => "bit", is_nullable => 0 },
  "lettertop1",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "lettertop2",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "lettertop3",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "lettertop4",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "letterbottom1",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "letterbottom2",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "letterbottom3",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "letterbottom4",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "lettersignatory",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</accountcode>

=item * L</branchcode>

=back

=cut

__PACKAGE__->set_primary_key("accountcode", "branchcode");

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

=head2 fa_bank_statements

Type: has_many

Related object: L<Spectrum::Result::FaBankStatement>

=cut

__PACKAGE__->has_many(
  "fa_bank_statements",
  "Spectrum::Result::FaBankStatement",
  {
    "foreign.accountcode" => "self.accountcode",
    "foreign.branchcode"  => "self.branchcode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_pending_cheques

Type: has_many

Related object: L<Spectrum::Result::FaPendingCheque>

=cut

__PACKAGE__->has_many(
  "fa_pending_cheques",
  "Spectrum::Result::FaPendingCheque",
  {
    "foreign.accountcode" => "self.accountcode",
    "foreign.branchcode"  => "self.branchcode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Fdebadkoqx1BX0631Sr+bg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
