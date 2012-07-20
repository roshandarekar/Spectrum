use utf8;
package Spectrum::Result::FaIssueRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaIssueRegister - Issue Register Store single Record for Material Issue Note.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaIssueRegister>

=cut

__PACKAGE__->table("FaIssueRegister");

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

Document Type. ISU,RET

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

Document Date

=head2 documentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class Code if Created.

=head2 refno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Reference No. for Information only.

=head2 refdate

  data_type: 'datetime'
  is_nullable: 0

Reference Date for Information only.

=head2 issuestorecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code from which material has Issued.

=head2 receivestorecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code in Which Material has Received or Returned.

=head2 productcode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Product Code against which Material has Issued.

=head2 productcolorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Product Colour Code against which Material has Issed.

=head2 productsizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Product Size Code against which Material has Issued.

=head2 processcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Process Code against which material has Issued.

=head2 batchquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Product Batch Quantity for Issue Material.

=head2 departmentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Department Code in which Material has Issued or Return.

=head2 costcategorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Cost Category Code of Entry.

=head2 costcentrecode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Cost Centre Code of Entry.

=head2 gatepassdetails

  data_type: 'bit'
  is_nullable: 0

TRUE if Gate Pass Detail Required for Issued Entry.

=head2 itemheading

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Store Fixed Multiline Item Heading to print before Item detail.

=head2 remark

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Store Multiline Remark to Print after all item detail & calculation.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Keep Value while Editing.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

If Yes then Entry has Locked.

=head2 passed

  data_type: 'bit'
  is_nullable: 0

If Yes then Entry has Passed.

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

=head2 isprinted

  data_type: 'bit'
  is_nullable: 0

True if Document has Printed.

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
  "documentclasscode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "refno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "refdate",
  { data_type => "datetime", is_nullable => 0 },
  "issuestorecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "receivestorecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "productcode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "productcolorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "productsizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "processcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "batchquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "departmentcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcategorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcentrecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "gatepassdetails",
  { data_type => "bit", is_nullable => 0 },
  "itemheading",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "remark",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "passed",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
  "isprinted",
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

=head2 fa_issue_products

Type: has_many

Related object: L<Spectrum::Result::FaIssueProduct>

=cut

__PACKAGE__->has_many(
  "fa_issue_products",
  "Spectrum::Result::FaIssueProduct",
  {
    "foreign.branchcode"   => "self.branchcode",
    "foreign.documentno"   => "self.documentno",
    "foreign.documenttype" => "self.documenttype",
    "foreign.documentyear" => "self.documentyear",
    "foreign.seriescode"   => "self.seriescode",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CwUkt6KC1/G4FXknPi6D7g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
