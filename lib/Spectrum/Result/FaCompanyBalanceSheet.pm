use utf8;
package Spectrum::Result::FaCompanyBalanceSheet;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaCompanyBalanceSheet

=head1 DESCRIPTION

Company Balance Sheet Store Defination of Balance Sheet / Profit & Loss to Print as Per Schedule 6 of Companies Act.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaCompanyBalanceSheet>

=cut

__PACKAGE__->table("FaCompanyBalanceSheet");

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

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Contineous Serial No. of Lines

=head2 accounthead

  data_type: 'smallint'
  is_nullable: 0

Account Head for Defined Schedule/Total/Amunt.

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Particulars of Report.

=head2 scheduleno

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Schedule No. Text to Print in Report.

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

=head2 balance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Temporary Fields to Replace Current Balance while Printing.

=head2 lastyearbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Temporary Fields to Replace Last Year Balance while Printing.

=head2 linefont

  data_type: 'smallint'
  is_nullable: 0

Font in which Line has to Print. 0 - Normal, 11 - Bright as per DOS Font Defination.

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
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "accounthead",
  { data_type => "smallint", is_nullable => 0 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "scheduleno",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "totaltype",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "amountcolumn",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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
  "linefont",
  { data_type => "smallint", is_nullable => 0 },
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

=item * L</sno>

=back

=cut

__PACKAGE__->set_primary_key("reporttype", "reportcode", "sno");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kdeiXLzNhjxK7+i1JE/fAw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
