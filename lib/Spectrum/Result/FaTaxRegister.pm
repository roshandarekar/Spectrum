use utf8;
package Spectrum::Result::FaTaxRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaTaxRegister

=head1 DESCRIPTION

Tax Register store documents tax wise Taxable & Tax Amount Detail.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaTaxRegister>

=cut

__PACKAGE__->table("FaTaxRegister");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

Document Accounting Year.

=head2 branchcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Company Branch Code.

=head2 documenttype

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Document Type. PUR,CPU,SDN,SCN,INV,CMO,CCN,CDN,EXP,SNT

=head2 seriescode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 4

Document Series Code.

=head2 documentno

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Document No.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No.

=head2 accountsno

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

Account Serial No. of FaAccountLedger File

=head2 taxcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Tax Code

=head2 taxableamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Taxable Amount of Tax Code

=head2 taxamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Tax Amount of Tax Code.

=head2 netamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Net Sales or Purchase Amount in case Tax to be Calculated on MRP

=head2 formserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Sales Tax Form Serial No.

=head2 formdate

  data_type: 'datetime'
  is_nullable: 0

Date of Form Received or Issued.

=head2 eformserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Sales Tax Form Serial No. for E1/E2

=head2 eformdate

  data_type: 'datetime'
  is_nullable: 0

Date of Form Received or Issued for E1/E2

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
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "branchcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "documenttype",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "seriescode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 4 },
  "documentno",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "accountsno",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "taxcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "taxableamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "taxamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "netamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "formserialno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "formdate",
  { data_type => "datetime", is_nullable => 0 },
  "eformserialno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "eformdate",
  { data_type => "datetime", is_nullable => 0 },
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

=item * L</accountsno>

=item * L</taxcode>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "accountsno",
  "taxcode",
);

=head1 RELATIONS

=head2 fa_account_ledger

Type: belongs_to

Related object: L<Spectrum::Result::FaAccountLedger>

=cut

__PACKAGE__->belongs_to(
  "fa_account_ledger",
  "Spectrum::Result::FaAccountLedger",
  {
    accountsno   => "accountsno",
    branchcode   => "branchcode",
    documentno   => "documentno",
    documenttype => "documenttype",
    documentyear => "documentyear",
    seriescode   => "seriescode",
  },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 taxcode

Type: belongs_to

Related object: L<Spectrum::Result::FaTaxMaster>

=cut

__PACKAGE__->belongs_to(
  "taxcode",
  "Spectrum::Result::FaTaxMaster",
  { taxcode => "taxcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3MmY7AetcCCGoNOLwSrUeA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
