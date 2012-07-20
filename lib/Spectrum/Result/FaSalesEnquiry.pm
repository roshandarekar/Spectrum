use utf8;
package Spectrum::Result::FaSalesEnquiry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSalesEnquiry

=head1 DESCRIPTION

Sales Enquiry stores document & products details of each sales enquiry.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSalesEnquiry>

=cut

__PACKAGE__->table("FaSalesEnquiry");

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

Document Type. "SEQ"

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

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Party (Customer) Account Code.

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Sales Man Code.

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Agent Code.

=head2 refno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Reference No. for Information only.

=head2 refdate

  data_type: 'datetime'
  is_nullable: 0

Reference Date for Information only.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No. in which Item Entered.

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code.

=head2 itemsno

  data_type: 'smallint'
  is_nullable: 0

Item Serial No. which can't change once saved.

=head2 colorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Color of Item.

=head2 sizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Size Code of Item.

=head2 itemdescription

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Multi Line Item Description.

=head2 entryquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Entry Enquiry Quantity in Main Unit.

=head2 entryquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Entry Enquiry Quantity in Other Unit.

=head2 quantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Enquiry Quantity in Main Unit after converting.

=head2 quantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Enquiry Quantity in Other Unit after converting.

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

If Quotation has issued then quotation Document Year.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

If Quotation has issued then quotation branch code compulsory same as document branch code.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

If Quotation has issued then quotation Document Type. "SQT"

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

If Quotation has issued then quotation Document Series Code.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

If Quotation has issued then quotation Document No.

=head2 cancelled

  data_type: 'bit'
  is_nullable: 0

True if Enquiry has Cancelled.

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

for Selection

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
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "salesmancode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "agentcode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "refno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "refdate",
  { data_type => "datetime", is_nullable => 0 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "itemsno",
  { data_type => "smallint", is_nullable => 0 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "itemdescription",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "entryquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "entryquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
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
  "cancelled",
  { data_type => "bit", is_nullable => 0 },
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

=item * L</itemcode>

=item * L</itemsno>

=item * L</colorcode>

=item * L</sizecode>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "itemcode",
  "itemsno",
  "colorcode",
  "sizecode",
);

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

=head2 itemcode

Type: belongs_to

Related object: L<Spectrum::Result::FaItemMaster>

=cut

__PACKAGE__->belongs_to(
  "itemcode",
  "Spectrum::Result::FaItemMaster",
  { itemcode => "itemcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NXMcK88a3rSCCul8u10mFg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
