use utf8;
package Spectrum::Result::FaSoldInTransit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSoldInTransit

=head1 DESCRIPTION

Sold In Transit Store detail Sales Invocie & Purchase Bill aganst that sale.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSoldInTransit>

=cut

__PACKAGE__->table("FaSoldInTransit");

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

Document Type. INV

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

=head2 totaldocuments

  data_type: 'smallint'
  is_nullable: 0

Total Purchase Documents specially for SoldInTransit Report Query

=head2 sno

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Contineouse Serial No. of Purchase Entry Selected

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Bill Document Accounting Year.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Bill Company Branch Code.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Bill Document Type. PUR

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Bill Document Series Code.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Bill Document No.

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
  "totaldocuments",
  { data_type => "smallint", is_nullable => 0 },
  "sno",
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

=item * L</rdocumentyear>

=item * L</rbranchcode>

=item * L</rdocumenttype>

=item * L</rseriescode>

=item * L</rdocumentno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "rdocumentyear",
  "rbranchcode",
  "rdocumenttype",
  "rseriescode",
  "rdocumentno",
);

=head1 RELATIONS

=head2 fa_sales_invoice_register

Type: belongs_to

Related object: L<Spectrum::Result::FaSalesInvoiceRegister>

=cut

__PACKAGE__->belongs_to(
  "fa_sales_invoice_register",
  "Spectrum::Result::FaSalesInvoiceRegister",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ws12Z21H4AB8S3+XRSyniQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
