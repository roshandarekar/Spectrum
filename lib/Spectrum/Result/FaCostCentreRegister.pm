use utf8;
package Spectrum::Result::FaCostCentreRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaCostCentreRegister

=head1 DESCRIPTION

CostCentre Register Store CostCentre wise Transaction Detail.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaCostCentreRegister>

=cut

__PACKAGE__->table("FaCostCentreRegister");

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

Document Type. PUR,CPU,SDN,SCN,INV,CMO,CCN,CDN,BRE,BPA,CRE,CPA,EXP,JOV,SNT

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

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code in which Posting to be done.

=head2 accountsno

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

Account Serial No. which can't change once saved.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No. of Account

=head2 accountbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch code of Account in which you want to make posting. (Same as branch code, only in Cash / Bank Entry it will be change in case of Branch Transfer)

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

=head2 currencyamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Gross amount in Currency entered.

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
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountsno",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "accountbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcategorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcentrecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
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
  "currencyamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
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

=head2 fa_account_ledger

Type: belongs_to

Related object: L<Spectrum::Result::FaAccountLedger>

=cut

__PACKAGE__->belongs_to(
  "fa_account_ledger",
  "Spectrum::Result::FaAccountLedger",
  {
    accountsno   => "accountsno",
    branchcode   => "branchcode",
    documentno   => "documentno",
    documenttype => "documenttype",
    documentyear => "documentyear",
    seriescode   => "seriescode",
  },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:so6LJZ9WjW9tEnnYZckcmw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
