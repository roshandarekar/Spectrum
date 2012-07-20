use utf8;
package Spectrum::Result::FaBudgetItem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaBudgetItem

=head1 DESCRIPTION

Budget Items Store Party/Item/Salesman/Agent  Wise Budget Figures

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaBudgetItems>

=cut

__PACKAGE__->table("FaBudgetItems");

=head1 ACCESSORS

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch for Budget.

=head2 budgetfor

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Budget for P)artywise, S)alesmanwise, A)Agent Wise OR I) Item and S for Sales

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Party code if Budget For is PartyWise Else Blank.

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Salesman Code if Budget For is Salesmanwise else Blank.

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

AgentCode if Budget For is Agentwise else Blank.

=head2 sno

  data_type: 'integer'
  is_nullable: 0

Contineouse Serial No.

=head2 itemcode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Item Code for Budget.

=head2 quantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Budget Quantity.

=head2 quantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month1

=head2 quantity2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month2

=head2 quantity3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month3

=head2 quantity4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month4

=head2 quantity5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month5

=head2 quantity6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month6

=head2 quantity7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month7

=head2 quantity8

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month8

=head2 quantity9

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month9

=head2 quantity10

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month10

=head2 quantity11

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month11

=head2 quantity12

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month12

=head2 quantity13

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month13

=head2 quantity14

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month14

=head2 quantity15

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month15

=head2 quantity16

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month16

=head2 quantity17

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month17

=head2 quantity18

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month18

=head2 quantity19

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month19

=head2 quantity20

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month20

=head2 quantity21

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month21

=head2 quantity22

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month22

=head2 quantity23

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month23

=head2 quantity24

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Budget Quantity for Month24

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

EditFlag for Entry Control.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

True if Record is Locked

=head2 used

  data_type: 'bit'
  is_nullable: 0

True if Record is Used in other Entry.

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date of Record Created.

=head2 package

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Package from which Record has Created.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection purpose.

=cut

__PACKAGE__->add_columns(
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "budgetfor",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "salesmancode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "agentcode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "sno",
  { data_type => "integer", is_nullable => 0 },
  "itemcode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "quantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity8",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity9",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity10",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity11",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity12",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity13",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity14",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity15",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity16",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity17",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity18",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity19",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity20",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity21",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity22",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity23",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity24",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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

=item * L</accountcode>

=item * L</salesmancode>

=item * L</agentcode>

=item * L</itemcode>

=back

=cut

__PACKAGE__->set_primary_key(
  "branchcode",
  "budgetfor",
  "accountcode",
  "salesmancode",
  "agentcode",
  "itemcode",
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aLd21ccO89lBVbtnU0HvwA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
