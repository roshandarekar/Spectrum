use utf8;
package Spectrum::Result::FaAccountProvisional;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAccountProvisional - Accounts Provisional stores Provisional Entry Records.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAccountProvisional>

=cut

__PACKAGE__->table("FaAccountProvisional");

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

Document Type. PUR,CPU,SDN,SCN,INV,CMO,CCN,CDN,BRE,BPA,CRE,CPA,EXP,JOV,SNT

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

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No.

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Account Code in which Posting to be done.

=head2 accountsno

  data_type: 'smallint'
  is_nullable: 0

Account Serial No. which can't change once saved.

=head2 accountbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch code of Account in which you want to make posting. (Same as branch code, only in Cash / Bank Entry it will be change in case of Branch Transfer)

=head2 chequeno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Cheque No. of Entry.

=head2 chequedate

  data_type: 'datetime'
  is_nullable: 0

Cheque Date.

=head2 amount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Entry Amount

=head2 allocateamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Allocated Amount

=head2 referencename

  data_type: 'varchar'
  is_nullable: 0
  size: 75

Account Referance Name required to Print on Cheque/ Receipt.

=head2 bankname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Bank Name of Cheque Received.

=head2 bankbranch

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Bank Branch of Cheque Received

=head2 narration

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Entry Narration

=head2 cleared

  data_type: 'bit'
  is_nullable: 0

TRUE if entry is cleared by bank statement.

=head2 jvdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Journal Voucher Document Accounting Year.

=head2 jvbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Journal Voucher Company Branch Code.

=head2 jvdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Journal Voucher Document Type "JOV"

=head2 jvseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Journal Voucher Document Series Code.

=head2 jvdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Journal Voucher Document No.

=head2 jvdocumentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Journal Voucher Document Class Code for Type.

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

=head2 currencyamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Gross amount in Currency entered.

=head2 tdscode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

TDS Decuction Code.

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

=head2 acpercentage

  data_type: 'real'
  is_nullable: 0

Additional Cess Percentage.

=head2 acamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Cess Amount to be Deducted.

=head2 secpercentage

  data_type: 'real'
  is_nullable: 0

SHEC Percentage.

=head2 secamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SHEC Amount to be Deducted.

=head2 passed

  data_type: 'bit'
  is_nullable: 0

TRUE if Voucher has Passed.

=head2 passedby

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Name of the User has Passed Voucher.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Keep Value while Editing.

=head2 lockflag

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
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "accountsno",
  { data_type => "smallint", is_nullable => 0 },
  "accountbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "chequeno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "chequedate",
  { data_type => "datetime", is_nullable => 0 },
  "amount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "allocateamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "referencename",
  { data_type => "varchar", is_nullable => 0, size => 75 },
  "bankname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "bankbranch",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "narration",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "cleared",
  { data_type => "bit", is_nullable => 0 },
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
  "currencycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "currencyexchangerate",
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
  "tdscode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
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
  "acpercentage",
  { data_type => "real", is_nullable => 0 },
  "acamount",
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
  "passed",
  { data_type => "bit", is_nullable => 0 },
  "passedby",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "lockflag",
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

=item * L</accountsno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "accountsno",
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

=head2 fa_cost_centre_provisionals

Type: has_many

Related object: L<Spectrum::Result::FaCostCentreProvisional>

=cut

__PACKAGE__->has_many(
  "fa_cost_centre_provisionals",
  "Spectrum::Result::FaCostCentreProvisional",
  {
    "foreign.accountsno"   => "self.accountsno",
    "foreign.branchcode"   => "self.branchcode",
    "foreign.documentno"   => "self.documentno",
    "foreign.documenttype" => "self.documenttype",
    "foreign.documentyear" => "self.documentyear",
    "foreign.seriescode"   => "self.seriescode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wYJUTb0HtDnzrglafeEJqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
