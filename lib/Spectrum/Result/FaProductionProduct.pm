use utf8;
package Spectrum::Result::FaProductionProduct;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaProductionProduct

=head1 DESCRIPTION

Production Products store details of production and consumption items.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaProductionProducts>

=cut

__PACKAGE__->table("FaProductionProducts");

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

Document Type. PRE

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

Serial No. in which Item Entered.

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code in Which Production or Issue has done.

=head2 itemcode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Item Code.

=head2 itemsno

  data_type: 'smallint'
  is_nullable: 0

Item Serial No. which can't change once saved.

=head2 itemtype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

C - Consumme, B - By Product, P - Production Items.

=head2 productionitem

  data_type: 'bit'
  is_nullable: 0

Yes if Item Code is Main Product Code.

=head2 valuation

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Store Item Valuation Like S,W,F,L,A,N,B,P,G

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

=head2 batchserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Batch/Serial No. of Item.

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Ref.Document Year Ag. Which material has consumed.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Ref.Branch Code Ag. Which material has consumed.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Ref.Document Type Ag. Which material has consumed.

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Ref.Series Code Ag. Which material has consumed.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Ref.Document No Ag. Which material has consumed.

=head2 ritemsno

  data_type: 'smallint'
  is_nullable: 0

Ref.Item Sno Ag. Which material has consumed.

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

=head2 allocatequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Allocate Quantity in Main Unit.

=head2 allocatequantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Allocate Quantity in Other Unit.

=head2 costrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Valuation Rate of Item.

=head2 per

  data_type: 'smallint'
  is_nullable: 0

Store Cost Rate Per Unit.

=head2 costamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Store Cost Amount of Item.

=head2 excisecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Excise Tariff Master Code (Modvat Package)

=head2 rg23ipageno

  data_type: 'integer'
  is_nullable: 0

RG23-I Page No. (Modvat Package)

=head2 rg23isno

  data_type: 'integer'
  is_nullable: 0

RG23-I Serial No. (Modvat Package)

=head2 debittorg23i

  data_type: 'bit'
  is_nullable: 0

True if Debit to RG23 Part I

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
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "itemcode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "itemsno",
  { data_type => "smallint", is_nullable => 0 },
  "itemtype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "productionitem",
  { data_type => "bit", is_nullable => 0 },
  "valuation",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "batchserialno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
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
  "ritemsno",
  { data_type => "smallint", is_nullable => 0 },
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
  "allocatequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "allocatequantity1",
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
  "per",
  { data_type => "smallint", is_nullable => 0 },
  "costamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "excisecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "rg23ipageno",
  { data_type => "integer", is_nullable => 0 },
  "rg23isno",
  { data_type => "integer", is_nullable => 0 },
  "debittorg23i",
  { data_type => "bit", is_nullable => 0 },
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

=item * L</itemcode>

=item * L</itemsno>

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
);

=head1 RELATIONS

=head2 fa_production_register

Type: belongs_to

Related object: L<Spectrum::Result::FaProductionRegister>

=cut

__PACKAGE__->belongs_to(
  "fa_production_register",
  "Spectrum::Result::FaProductionRegister",
  {
    branchcode   => "branchcode",
    documentno   => "documentno",
    documenttype => "documenttype",
    documentyear => "documentyear",
    seriescode   => "seriescode",
  },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yVq+bnRRng4DpYob2o8tqA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
