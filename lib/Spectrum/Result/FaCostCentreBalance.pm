use utf8;
package Spectrum::Result::FaCostCentreBalance;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaCostCentreBalance

=head1 DESCRIPTION

CostCentre Balance Stores Account & CostCentre Wise Opening Balance.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaCostCentreBalance>

=cut

__PACKAGE__->table("FaCostCentreBalance");

=head1 ACCESSORS

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code for which Cost Centre Account Wise balance has entered

=head2 costcategorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Cost Category code of account for Balance

=head2 costcentrecode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Cost Centre Code of Account for Balance

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Account Code for cost centre wise balance

=head2 sno

  data_type: 'integer'
  is_nullable: 0

Serial No.

=head2 openingbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Cost Centre Account wise Balance

=head2 lastyearbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Last Year Balance of Cost Centre Account

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

Package from Entered

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection

=cut

__PACKAGE__->add_columns(
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcategorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcentrecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "sno",
  { data_type => "integer", is_nullable => 0 },
  "openingbalance",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "lastyearbalance",
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

=item * L</costcategorycode>

=item * L</costcentrecode>

=item * L</accountcode>

=back

=cut

__PACKAGE__->set_primary_key(
  "branchcode",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xYaDC+Tdmo/lCPVB/U7ldw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
