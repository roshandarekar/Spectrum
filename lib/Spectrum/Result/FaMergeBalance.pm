use utf8;
package Spectrum::Result::FaMergeBalance;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaMergeBalance - Merge Balance Store Company Account wise Balance.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaMergeBalance>

=cut

__PACKAGE__->table("FaMergeBalance");

=head1 ACCESSORS

=head2 companyno

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

Company No. spacified Merge Company Table.

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code Company.

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code of Merge Company.

=head2 balancedate

  data_type: 'datetime'
  is_nullable: 0

Date of Balance on which data has merged

=head2 currentbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Balance of Account.

=head2 lastyearbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Last Year Balance of Account.

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
  "companyno",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "balancedate",
  { data_type => "datetime", is_nullable => 0 },
  "currentbalance",
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

=item * L</companyno>

=item * L</accountcode>

=item * L</branchcode>

=item * L</balancedate>

=back

=cut

__PACKAGE__->set_primary_key("companyno", "accountcode", "branchcode", "balancedate");

=head1 RELATIONS

=head2 companyno

Type: belongs_to

Related object: L<Spectrum::Result::FaMergeCompany>

=cut

__PACKAGE__->belongs_to(
  "companyno",
  "Spectrum::Result::FaMergeCompany",
  { companyno => "companyno" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MMqINgm5x/H9agmit+TiEw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
