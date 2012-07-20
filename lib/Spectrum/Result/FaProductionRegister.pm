use utf8;
package Spectrum::Result::FaProductionRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaProductionRegister

=head1 DESCRIPTION

Production Register stores single record of each production Note.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaProductionRegister>

=cut

__PACKAGE__->table("FaProductionRegister");

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

=head2 productstorecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Product Store Code for which Work Order has Issued.

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

Batch Quantity for which material has consumed.

=head2 productquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Product Quantity manufactured in Main Unit.

=head2 productquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Product Quantity manufactured in Other Unit.

=head2 wodocumentyear

  data_type: 'smallint'
  is_nullable: 0

Work Order Document Year for which production has done.

=head2 wobranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Order Branch Code for which production has done.

=head2 wodocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Order Document Type for which production has done.

=head2 woseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Order Series Code for which production has done.

=head2 wodocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Order Document No. for which production has done.

=head2 departmentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Department Code in which production has done.

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

=head2 machinecode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Machine Code on which Production has done

=head2 employeecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Employee Code who has manufactured Item.

=head2 shiftcode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Shift Code in which Production has done.

=head2 productionstartdate

  data_type: 'datetime'
  is_nullable: 0

Date on Which Production has started.

=head2 productionstarttime

  data_type: 'real'
  is_nullable: 0

Time at which Production has started.

=head2 productionenddate

  data_type: 'datetime'
  is_nullable: 0

Date on Which Production has Completed.

=head2 productionendtime

  data_type: 'real'
  is_nullable: 0

Time at which Production has Completed.

=head2 materialcost

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Raw Material Amont.

=head2 labourhours

  data_type: 'real'
  is_nullable: 0

Total Labour Hours Consumed.

=head2 labourrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Labour Rate per Hours.

=head2 labourcost

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Labour Cost.

=head2 factorycostpercentage

  data_type: 'real'
  is_nullable: 0

Percentage of Factory Cost.

=head2 factorycoston

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount on which Factory Cost has calculated.

=head2 factorycost

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Factory Cost Amount.

=head2 admincostpercentage

  data_type: 'real'
  is_nullable: 0

Percentage of Administrative Cost.

=head2 admincoston

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount on Which Administrative cost has calculated.

=head2 admincost

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Administrative Cost Amount.

=head2 othercostpercentage

  data_type: 'real'
  is_nullable: 0

Percentage of Other Cost.

=head2 othercoston

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount on Which Other Cost has Calculated.

=head2 othercost

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Other Cost Amount

=head2 totalcost

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Cost of Production.

=head2 costrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cost Rate of Item Per Unit.

=head2 costamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

 Cost Amount on base of Cost Rate.

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
  "productstorecode",
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
  "productquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "productquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "wodocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "wobranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "wodocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "woseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "wodocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "departmentcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcategorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcentrecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "machinecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "employeecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "shiftcode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "productionstartdate",
  { data_type => "datetime", is_nullable => 0 },
  "productionstarttime",
  { data_type => "real", is_nullable => 0 },
  "productionenddate",
  { data_type => "datetime", is_nullable => 0 },
  "productionendtime",
  { data_type => "real", is_nullable => 0 },
  "materialcost",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "labourhours",
  { data_type => "real", is_nullable => 0 },
  "labourrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "labourcost",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "factorycostpercentage",
  { data_type => "real", is_nullable => 0 },
  "factorycoston",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "factorycost",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "admincostpercentage",
  { data_type => "real", is_nullable => 0 },
  "admincoston",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "admincost",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "othercostpercentage",
  { data_type => "real", is_nullable => 0 },
  "othercoston",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "othercost",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "totalcost",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "costrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "costamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
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

=head2 fa_production_products

Type: has_many

Related object: L<Spectrum::Result::FaProductionProduct>

=cut

__PACKAGE__->has_many(
  "fa_production_products",
  "Spectrum::Result::FaProductionProduct",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XXpgWw+DR2JpM0ML6+ugcg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
