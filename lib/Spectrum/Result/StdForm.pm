use utf8;
package Spectrum::Result::StdForm;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdForm - Forms stores Defination of Document Designing.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdForms>

=cut

__PACKAGE__->table("stdForms");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Form.

=head2 formname

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Document Format Name.

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Description of Format for Understanding.

=head2 defaultformat

  data_type: 'bit'
  is_nullable: 0

True if Current Format is Default Format.

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch For the form is Default Form.

=head2 formwidth

  data_type: 'smallint'
  is_nullable: 0

Format width in Character.

=head2 formlength

  data_type: 'smallint'
  is_nullable: 0

Length of Format in Lines.

=head2 formtext

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Screen Layout for Format to Print

=head2 startproductrow

  data_type: 'smallint'
  is_nullable: 0

Row No. from Which Product (Body) Part Starts.

=head2 lastproductrow

  data_type: 'smallint'
  is_nullable: 0

Row No. Upto Which Product (Body) Part to Print.

=head2 blankproductrow

  data_type: 'smallint'
  is_nullable: 0

Row No. which Contains Blank Lines to Print in Product (Body) Part.

=head2 startbottomrow

  data_type: 'smallint'
  is_nullable: 0

Row No. From which Bottom (Footer) Part Starts.

=head2 defaultfont

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Default Font of Format.

=head2 itemsortorder

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Field Name & Order Type to Sort Item before Printing.

=head2 grouptotalfields

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Fiend Name in Which Group Total to be Generated.

=head2 processeachcopy

  data_type: 'bit'
  is_nullable: 0

Yes if Program should Process Each Copy to Print.

=head2 printcalculation

  data_type: 'bit'
  is_nullable: 0

Yes if Program Prints Calculation Part.

=head2 printcftotal

  data_type: 'bit'
  is_nullable: 0

Yes if Carried Forward Total to be Print in case of Print Calculation is Yes.

=head2 caldescriptioncolumn

  data_type: 'smallint'
  is_nullable: 0

Column No. from which Calculation Description Part Starts.

=head2 calamountcolumn

  data_type: 'smallint'
  is_nullable: 0

Column No. from Which Calculation Amount  to be Print.

=head2 calamountwidth

  data_type: 'smallint'
  is_nullable: 0

Length of Calculation Amount in Character.

=head2 calamountdecimal

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Decimal Point of Calculation Amount.

=head2 caldescriptionfont

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Font In which Calculation Description to be print.

=head2 calamountfont

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Font in which Calculation Amount to be Print.

=head2 printitemsnoagainsttax

  data_type: 'bit'
  is_nullable: 0

Yes if User Wants to Print Item Sno. against Tax Amount.

=head2 printrelativedocumentdetail

  data_type: 'bit'
  is_nullable: 0

Yes if User Wants to Print Relative Document Information (Like Order Date in Invoice Document.)

=head2 printrelativeitemdetail

  data_type: 'bit'
  is_nullable: 0

Yes if User Wants to Print Item Detail of Relative Document (Like Pending Quantity of Order in Invoice Document.)

=head2 descriptionnetamount

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Description for Net Amount.

=head2 descriptiongrossamount

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Description for Gross Amount.

=head2 rowadjustment

  data_type: 'smallint'
  is_nullable: 0

Row to Adjust to Print Up or Down to Print on Preprinted Stationery.

=head2 columnadjustment

  data_type: 'smallint'
  is_nullable: 0

Column to Adjust to Print Left or Right to Print on Preprinted Stationery.

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
  "formname",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "defaultformat",
  { data_type => "bit", is_nullable => 0 },
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "formwidth",
  { data_type => "smallint", is_nullable => 0 },
  "formlength",
  { data_type => "smallint", is_nullable => 0 },
  "formtext",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "startproductrow",
  { data_type => "smallint", is_nullable => 0 },
  "lastproductrow",
  { data_type => "smallint", is_nullable => 0 },
  "blankproductrow",
  { data_type => "smallint", is_nullable => 0 },
  "startbottomrow",
  { data_type => "smallint", is_nullable => 0 },
  "defaultfont",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "itemsortorder",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "grouptotalfields",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "processeachcopy",
  { data_type => "bit", is_nullable => 0 },
  "printcalculation",
  { data_type => "bit", is_nullable => 0 },
  "printcftotal",
  { data_type => "bit", is_nullable => 0 },
  "caldescriptioncolumn",
  { data_type => "smallint", is_nullable => 0 },
  "calamountcolumn",
  { data_type => "smallint", is_nullable => 0 },
  "calamountwidth",
  { data_type => "smallint", is_nullable => 0 },
  "calamountdecimal",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "caldescriptionfont",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "calamountfont",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "printitemsnoagainsttax",
  { data_type => "bit", is_nullable => 0 },
  "printrelativedocumentdetail",
  { data_type => "bit", is_nullable => 0 },
  "printrelativeitemdetail",
  { data_type => "bit", is_nullable => 0 },
  "descriptionnetamount",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "descriptiongrossamount",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "rowadjustment",
  { data_type => "smallint", is_nullable => 0 },
  "columnadjustment",
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

=item * L</documenttype>

=item * L</formname>

=back

=cut

__PACKAGE__->set_primary_key("documenttype", "formname");

=head1 RELATIONS

=head2 std_forms_codes

Type: has_many

Related object: L<Spectrum::Result::StdFormsCode>

=cut

__PACKAGE__->has_many(
  "std_forms_codes",
  "Spectrum::Result::StdFormsCode",
  {
    "foreign.documenttype" => "self.documenttype",
    "foreign.formname"     => "self.formname",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Rg8jfLDthrlkoywY8k6udg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
