use utf8;
package Spectrum::Result::FaVoucherDef;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaVoucherDef - Voucher Printing Defination

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaVoucherDef>

=cut

__PACKAGE__->table("FaVoucherDef");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type for Voucher Setup

=head2 document

  data_type: 'varchar'
  is_nullable: 0
  size: 1

"V" for Voucher & "R" for Receipt

=head2 voucherlength

  data_type: 'smallint'
  is_nullable: 0

Length of Voucher in Lines

=head2 printedletterhead

  data_type: 'bit'
  is_nullable: 0

True if Voucher has to Print on Printed Letter Head

=head2 startvoucherrow

  data_type: 'smallint'
  is_nullable: 0

Start Row Position to Start Print Voucher When Printed Letter Head is TRUE.

=head2 printvoucherheading

  data_type: 'bit'
  is_nullable: 0

If TRUE Program will Print Voucher Heading Defined in Company and Branch Setup.

=head2 printvoucherno

  data_type: 'bit'
  is_nullable: 0

If TRUE Program will Print Voucher No. on Voucher.

=head2 printdocumentseries

  data_type: 'bit'
  is_nullable: 0

If TRUE Program will Print Series Code with Voucher No.

=head2 printaccountcode

  data_type: 'bit'
  is_nullable: 0

If TRUE Program will Print Account Code with Account Name.

=head2 printnarration

  data_type: 'bit'
  is_nullable: 0

If TRUE Program will Print Narration After Account Name.

=head2 printaccountgroupname

  data_type: 'bit'
  is_nullable: 0

If TRUE Program will Print Parent Group Name After Account Name.

=head2 printcostcentredetail

  data_type: 'bit'
  is_nullable: 0

If TRUE Program will Print Cost Centre Detail in Inner Column.

=head2 printuserid

  data_type: 'bit'
  is_nullable: 0

If TRUE Program will Print User Name at End of Voucher.

=head2 footertext1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Voucher Footer Text Line 1

=head2 footertext2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Voucher Footer Text Line 2

=head2 footertext3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Voucher Footer Text Line 3

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
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "document",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "voucherlength",
  { data_type => "smallint", is_nullable => 0 },
  "printedletterhead",
  { data_type => "bit", is_nullable => 0 },
  "startvoucherrow",
  { data_type => "smallint", is_nullable => 0 },
  "printvoucherheading",
  { data_type => "bit", is_nullable => 0 },
  "printvoucherno",
  { data_type => "bit", is_nullable => 0 },
  "printdocumentseries",
  { data_type => "bit", is_nullable => 0 },
  "printaccountcode",
  { data_type => "bit", is_nullable => 0 },
  "printnarration",
  { data_type => "bit", is_nullable => 0 },
  "printaccountgroupname",
  { data_type => "bit", is_nullable => 0 },
  "printcostcentredetail",
  { data_type => "bit", is_nullable => 0 },
  "printuserid",
  { data_type => "bit", is_nullable => 0 },
  "footertext1",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "footertext2",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "footertext3",
  { data_type => "varchar", is_nullable => 0, size => 80 },
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

=item * L</documenttype>

=item * L</document>

=back

=cut

__PACKAGE__->set_primary_key("documenttype", "document");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XGPgXpqB5064IuFg4FduoQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
