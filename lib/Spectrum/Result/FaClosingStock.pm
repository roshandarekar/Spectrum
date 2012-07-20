use utf8;
package Spectrum::Result::FaClosingStock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaClosingStock

=head1 DESCRIPTION

Closing Stock Store Closing Stock figure month wise to print Profit & Loss and Balance Sheet.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaClosingStock>

=cut

__PACKAGE__->table("FaClosingStock");

=head1 ACCESSORS

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Branch Code for Code has Entered

=head2 balancesheetaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Balance Sheet AccountCode for Closing Stock

=head2 profitlossaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Profit & Loss Account Clode for Closing Stock

=head2 openingstockaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Opening Stock Account Code of Trading Account only for Monthwise Profit & Loss

=head2 amount1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month1

=head2 amount2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month2

=head2 amount3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month3

=head2 amount4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month4

=head2 amount5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month5

=head2 amount6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month6

=head2 amount7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month7

=head2 amount8

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month8

=head2 amount9

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month9

=head2 amount10

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month10

=head2 amount11

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month11

=head2 amount12

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month12

=head2 amount13

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month13

=head2 amount14

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month14

=head2 amount15

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month15

=head2 amount16

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month16

=head2 amount17

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month17

=head2 amount18

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month18

=head2 amount19

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month19

=head2 amount20

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month20

=head2 amount21

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month21

=head2 amount22

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month22

=head2 amount23

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month23

=head2 amount24

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Closing Stock Value for Month24

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
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "balancesheetaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "profitlossaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "openingstockaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
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

=item * L</branchcode>

=item * L</balancesheetaccountcode>

=item * L</profitlossaccountcode>

=back

=cut

__PACKAGE__->set_primary_key(
  "branchcode",
  "balancesheetaccountcode",
  "profitlossaccountcode",
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:S93Ofcb19l7Fo0yF1GvUyA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
