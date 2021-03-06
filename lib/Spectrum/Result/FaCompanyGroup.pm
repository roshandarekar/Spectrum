use utf8;
package Spectrum::Result::FaCompanyGroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaCompanyGroup

=head1 DESCRIPTION

Company Groups Store Defination of Grouping to Print Groupings as Per Schedule 6 of Companies Act.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaCompanyGroups>

=cut

__PACKAGE__->table("FaCompanyGroups");

=head1 ACCESSORS

=head2 reporttype

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Defination of Report BS - Balance Sheet & PL - Profit & Loss

=head2 reportcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

4 Digit Unit Code No. for Schedule/Total/Grouping etc.

=head2 scheduleno

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Schedule No. Text to Print in Report.

=head2 groupno

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Group No. Text to Print in Schedule.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Contineous Serial No. of Lines

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Particulars of Report.

=head2 accountgroupcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Group from which Balance to Pickup.

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account from which Balance to pickup.

=head2 totaltype

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Type of Total you want to Print. TC - Total Closed. SC - SubTotal Closed. TF - Total Forward. SF - Subtotal Forward. FA - Fixed Amount.

=head2 amountcolumn

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Column in which Amount to Print. I - Inner, O - Outer.

=head2 linefont

  data_type: 'smallint'
  is_nullable: 0

Font in which Line has to Print. 0 - Normal, 11 - Bright as per DOS Font Defination.

=head2 balance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Year Balance for Fixed Amount.

=head2 lastyearbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Last Year Balance for Fixed Amount.

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

For Selection.

=cut

__PACKAGE__->add_columns(
  "reporttype",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "reportcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "scheduleno",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "groupno",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "accountgroupcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "totaltype",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "amountcolumn",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "linefont",
  { data_type => "smallint", is_nullable => 0 },
  "balance",
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

=item * L</reporttype>

=item * L</reportcode>

=item * L</scheduleno>

=item * L</groupno>

=item * L</sno>

=back

=cut

__PACKAGE__->set_primary_key("reporttype", "reportcode", "scheduleno", "groupno", "sno");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8LTkvjzRIS7gfzoZ/hIArQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
