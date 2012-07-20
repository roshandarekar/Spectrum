use utf8;
package Spectrum::Result::FaBudgetAccount;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaBudgetAccount - Budget Accounts store Account/CostCentre Wise Budget Figure.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaBudgetAccounts>

=cut

__PACKAGE__->table("FaBudgetAccounts");

=head1 ACCESSORS

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch for which Budget has entered.

=head2 budgetfor

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Budger for I)ncomeExpenditure/Partywise S)ales/PartyWise P)urchase

=head2 costcategorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Cost Category Code for which budget has entered

=head2 costcentrecode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Cost Centre Code for budget

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Account Code for which budget has entered.

=head2 sno

  data_type: 'integer'
  is_nullable: 0

Serial No.

=head2 amount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Budget Amount.

=head2 amount1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month1

=head2 amount2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month2

=head2 amount3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month3

=head2 amount4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month4

=head2 amount5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month5

=head2 amount6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month6

=head2 amount7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month7

=head2 amount8

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month8

=head2 amount9

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month9

=head2 amount10

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month10

=head2 amount11

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month11

=head2 amount12

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month12

=head2 amount13

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month13

=head2 amount14

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month14

=head2 amount15

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month15

=head2 amount16

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month16

=head2 amount17

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month17

=head2 amount18

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month18

=head2 amount19

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month19

=head2 amount20

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month20

=head2 amount21

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month21

=head2 amount22

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month22

=head2 amount23

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month23

=head2 amount24

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Amount for Month24

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Edit Flag

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if Standard

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

=head2 package

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Package from which it has created

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection

=cut

__PACKAGE__->add_columns(
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "budgetfor",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "costcategorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcentrecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "sno",
  { data_type => "integer", is_nullable => 0 },
  "amount",
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
  "amount21",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount22",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount23",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "amount24",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "standard",
  { data_type => "bit", is_nullable => 0 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "used",
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

=item * L</branchcode>

=item * L</budgetfor>

=item * L</costcategorycode>

=item * L</costcentrecode>

=item * L</accountcode>

=back

=cut

__PACKAGE__->set_primary_key(
  "branchcode",
  "budgetfor",
  "costcategorycode",
  "costcentrecode",
  "accountcode",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Lx7sG/3jl65jJ1peI+0nww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
