use utf8;
package Spectrum::Result::FaAccountBalanceMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAccountBalanceMaster

=head1 DESCRIPTION

Account Balance Master Stores Account Opening, MonthTransaction Summary & Current Balance.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAccountBalanceMaster>

=cut

__PACKAGE__->table("FaAccountBalanceMaster");

=head1 ACCESSORS

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Account Code of Master.

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code for which Balance detail has stored in record.

=head2 openingbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Account

=head2 lastyearbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Last Year Closing Balance of Account for Profit & Loss Statement  and Balance Sheet

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

Current Balance of Account

=head2 currencycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Currency Code in which Regular transaction is taking place only for Cash / Bank

=head2 currencyopeningbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance in Currency

=head2 currencycurrentbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance in Currency

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if Standard Record

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
  "currencycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "currencyopeningbalance",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "currencycurrentbalance",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "standard",
  { data_type => "bit", is_nullable => 0 },
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


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pz8Tty90ViffvIwHwg0IcQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
