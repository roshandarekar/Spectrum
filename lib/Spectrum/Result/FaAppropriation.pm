use utf8;
package Spectrum::Result::FaAppropriation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAppropriation

=head1 DESCRIPTION

Appropriation Defination Store Profit/Loss Appropriation Percentage for Accounts.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAppropriation>

=cut

__PACKAGE__->table("FaAppropriation");

=head1 ACCESSORS

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Contineous Serial No. Required while Updating Profit or Loss

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

=head2 profitpercentage

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Percentage of Profit to Distribute to Account.

=head2 losspercentage

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Percentage of Profit to Distribute to Account.

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
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "balancesheetaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "profitlossaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "profitpercentage",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "losspercentage",
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

=item * L</sno>

=back

=cut

__PACKAGE__->set_primary_key("sno");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:n0UjnklrSw/37OEZ0VM8Jg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
