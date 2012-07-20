use utf8;
package Spectrum::Result::FaPurchaseBillGatePassRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaPurchaseBillGatePassRegister

=head1 DESCRIPTION

Purchase Bill Gatepass Register store single record for gatepass detail of purchase bill  if user selected gatepass detail.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaPurchaseBillGatePassRegister>

=cut

__PACKAGE__->table("FaPurchaseBillGatePassRegister");

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

Document Type. "SDN"

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

=head2 exciseinvoiceno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Excise Gatepass No. Incase of Invoice/Supplier Debit Note.

=head2 preparationdate

  data_type: 'datetime'
  is_nullable: 0

Date of Gate Pass Preparation.

=head2 preparationtime

  data_type: 'datetime'
  is_nullable: 0

Time of Gate Pass Preparation.

=head2 removaldate

  data_type: 'datetime'
  is_nullable: 0

Date of Removal.

=head2 removaltime

  data_type: 'datetime'
  is_nullable: 0

Time of Removal.

=head2 rg23no

  data_type: 'smallint'
  is_nullable: 0

Entry No. in RG23 II Register.

=head2 rg23date

  data_type: 'datetime'
  is_nullable: 0

Entry Date in RG23 II Register.

=head2 rg23pageno

  data_type: 'smallint'
  is_nullable: 0

Page No. of RG23 II Register

=head2 rg23amount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount Debited in RG23 II Register.

=head2 plano

  data_type: 'smallint'
  is_nullable: 0

Entry No. PLA Register.

=head2 pladate

  data_type: 'datetime'
  is_nullable: 0

Entry Date in PLA Register.

=head2 plapageno

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Page No. of PLA Regiset.

=head2 plaamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount Debited in PLA Register.

=head2 rg23cno

  data_type: 'smallint'
  is_nullable: 0

Entry No. in RG23 C Register.

=head2 rg23cdate

  data_type: 'datetime'
  is_nullable: 0

Entry Date in RG23 C Register.

=head2 rg23cpageno

  data_type: 'smallint'
  is_nullable: 0

Page No. of RG23 C Register

=head2 rg23camount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount Debited In RG23 C Register

=head2 vehicleno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Vehicla No.

=head2 passedmodvat

  data_type: 'bit'
  is_nullable: 0

TRUE if Modvat Passed.

=head2 passedadi

  data_type: 'bit'
  is_nullable: 0

TRUE if Additional Duty of Import has Passed. (Only if Modvat has Passed)

=head2 printbuyername

  data_type: 'bit'
  is_nullable: 0

TRUE if it required to Print Buyer Name.

=head2 exciseno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Excise Tariff No. for only Gatepass Printing.

=head2 excisename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise Description for only Gatepass Printing.

=head2 progressivetotalrequired

  data_type: 'bit'
  is_nullable: 0

Value for Sales Invoice Only.

=head2 progressivetotal

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Progressive Value upto Current Document.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Edit Flag.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

Selected Flag.

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
  "exciseinvoiceno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "preparationdate",
  { data_type => "datetime", is_nullable => 0 },
  "preparationtime",
  { data_type => "datetime", is_nullable => 0 },
  "removaldate",
  { data_type => "datetime", is_nullable => 0 },
  "removaltime",
  { data_type => "datetime", is_nullable => 0 },
  "rg23no",
  { data_type => "smallint", is_nullable => 0 },
  "rg23date",
  { data_type => "datetime", is_nullable => 0 },
  "rg23pageno",
  { data_type => "smallint", is_nullable => 0 },
  "rg23amount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plano",
  { data_type => "smallint", is_nullable => 0 },
  "pladate",
  { data_type => "datetime", is_nullable => 0 },
  "plapageno",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plaamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23cno",
  { data_type => "smallint", is_nullable => 0 },
  "rg23cdate",
  { data_type => "datetime", is_nullable => 0 },
  "rg23cpageno",
  { data_type => "smallint", is_nullable => 0 },
  "rg23camount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "vehicleno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "passedmodvat",
  { data_type => "bit", is_nullable => 0 },
  "passedadi",
  { data_type => "bit", is_nullable => 0 },
  "printbuyername",
  { data_type => "bit", is_nullable => 0 },
  "exciseno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "excisename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "progressivetotalrequired",
  { data_type => "bit", is_nullable => 0 },
  "progressivetotal",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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

=head2 fa_purchase_bill_register

Type: belongs_to

Related object: L<Spectrum::Result::FaPurchaseBillRegister>

=cut

__PACKAGE__->belongs_to(
  "fa_purchase_bill_register",
  "Spectrum::Result::FaPurchaseBillRegister",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a4S5JT0Iw/E9bvVdmUYEaA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
