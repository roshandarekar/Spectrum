use utf8;
package Spectrum::Result::FaBankStatement;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaBankStatement - Bank Statement Store Records of Bank Statement Entry.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaBankStatement>

=cut

__PACKAGE__->table("FaBankStatement");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Bank Statement Accounting Year.

=head2 branchcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Bank Statement Company Branch Code.

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type. BRS

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Bank Statement Document Series Code.

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Bank Statement Document No.

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Bank Statement Document Date menas cleared date.

=head2 documentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class of Entry.

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Bank Account Code of Entry.

=head2 chequeno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Cheque No. of Entry.

=head2 amount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Entry Amount

=head2 entryyear

  data_type: 'varchar'
  is_nullable: 0
  size: 1

"C" for Current Year else "P" for Previous Year.

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Accounting Entry Document Accounting Year.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Accounting Entry Company Branch Code.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Accounting Entry Document Type. BRE,BPA,CPU sometimes CPU

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Accounting Entry Document Series Code.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Accounting Entry Document No.

=head2 raccountsno

  data_type: 'smallint'
  is_nullable: 0

Accounting Entry Account Serial No.

=head2 cleared

  data_type: 'bit'
  is_nullable: 0

TRUE if Entry has cleared else FALSE

=head2 narration

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Narration of maximum 255 character.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Keep Value while Editing.

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

=head2 locked

  data_type: 'bit'
  is_nullable: 0

If Yes then Entry has Locked.

=head2 passed

  data_type: 'bit'
  is_nullable: 0

If Yes then Entry has Passed.

=cut

__PACKAGE__->add_columns(
  "documentyear",
  { data_type => "smallint", is_nullable => 0 },
  "branchcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "seriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "documentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "documentdate",
  { data_type => "datetime", is_nullable => 0 },
  "documentclasscode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "chequeno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "amount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "entryyear",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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
  "raccountsno",
  { data_type => "smallint", is_nullable => 0 },
  "cleared",
  { data_type => "bit", is_nullable => 0 },
  "narration",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "passed",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
);

=head1 RELATIONS

=head2 fa_bank_master

Type: belongs_to

Related object: L<Spectrum::Result::FaBankMaster>

=cut

__PACKAGE__->belongs_to(
  "fa_bank_master",
  "Spectrum::Result::FaBankMaster",
  { accountcode => "accountcode", branchcode => "branchcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:33YdHMCz/vcWGIGnGZ8XPw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
