use utf8;
package Spectrum::Result::FaExpenseBillRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaExpenseBillRegister

=head1 DESCRIPTION

ExpenseBill Register stores single record of additional Detail of Expense Bill lile Bill No. / Date /Salesman /Agent etc.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaExpenseBillRegister>

=cut

__PACKAGE__->table("FaExpenseBillRegister");

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

Document Type. "EXP"

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

=head2 accountsno

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

1 Only to Set Relation with Account Ledger it is required.

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Item Description of Expense Bill

=head2 quantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity of Item Description of Expense Bil.

=head2 billno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Supplier Bill No.

=head2 billdate

  data_type: 'datetime'
  is_nullable: 0

Supplier Bill Date

=head2 creditperiod

  data_type: 'smallint'
  is_nullable: 0

Credit Period

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Salesman Code if any

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Agent Code if Any

=head2 commpercentage

  data_type: 'real'
  is_nullable: 0

Salesman Commission Percentage.

=head2 commissionamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Salesman Commission Amount.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Edit Flag.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

Selected Flag.

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
  "accountsno",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "quantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "billno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "billdate",
  { data_type => "datetime", is_nullable => 0 },
  "creditperiod",
  { data_type => "smallint", is_nullable => 0 },
  "salesmancode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "agentcode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "commpercentage",
  { data_type => "real", is_nullable => 0 },
  "commissionamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
);

=head1 UNIQUE CONSTRAINTS

=head2 C<FaAccountLedgerFaExpenseBillRegister>

=over 4

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

=item * L</accountsno>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "FaAccountLedgerFaExpenseBillRegister",
  [
    "documentyear",
    "branchcode",
    "documenttype",
    "seriescode",
    "documentno",
    "accountsno",
  ],
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:U47BWgH3IDEq79gfsxZwIw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
