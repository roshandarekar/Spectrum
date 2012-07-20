use utf8;
package Spectrum::Result::FaFormCollection;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaFormCollection

=head1 DESCRIPTION

Form Collection Stores Document Details against which forms has received.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaFormCollection>

=cut

__PACKAGE__->table("FaFormCollection");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Document Accounting Year.

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Company Branch Code.

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type. PUR,CPU,SDN,SCN,INV,CMO,CCN,CDN,EXP,SNT

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Document Series Code.

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No.

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Date on which Entry has Done

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Debtors/Creditors Code

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Tax Code for which Form has Received

=head2 startdate

  data_type: 'datetime'
  is_nullable: 0

Document Date from which Form has Received

=head2 lastdate

  data_type: 'datetime'
  is_nullable: 0

Document Date Upto Which Form has Received

=head2 e1e2form

  data_type: 'bit'
  is_nullable: 0

True if Entry has Done for E1/E2 Forms.

=head2 formserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Sales Tax Form Serial No.

=head2 formdate

  data_type: 'datetime'
  is_nullable: 0

Tax Form Date

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No.

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Invoice/Bill Document Accounting Year.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Invoice/Bill Company Branch Code.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Invoice/Bill Document Type. PUR,CPU,SDN,SCN,INV,CMO,CCN,CDN,EXP,SNT

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Invoice/Bill Document Series Code.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Invoice/Bill Document No.

=head2 formamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Form Amount

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
  "documentyear",
  { data_type => "smallint", is_nullable => 0 },
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "seriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "documentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "documentdate",
  { data_type => "datetime", is_nullable => 0 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "taxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "startdate",
  { data_type => "datetime", is_nullable => 0 },
  "lastdate",
  { data_type => "datetime", is_nullable => 0 },
  "e1e2form",
  { data_type => "bit", is_nullable => 0 },
  "formserialno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "formdate",
  { data_type => "datetime", is_nullable => 0 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "rdocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "rbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "rdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "rseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "rdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "formamount",
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

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

=item * L</sno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "sno",
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fFncoVTOUScm8i4D6XEpAQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
