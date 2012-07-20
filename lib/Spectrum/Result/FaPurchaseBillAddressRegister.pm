use utf8;
package Spectrum::Result::FaPurchaseBillAddressRegister;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaPurchaseBillAddressRegister

=head1 DESCRIPTION

Purchase Bill Address Register stores each record of Purchase Bill / Cash Purchase / Debit Note to Supplier / Credit Note to Supplier Address if user has selected change address.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaPurchaseBillAddressRegister>

=cut

__PACKAGE__->table("FaPurchaseBillAddressRegister");

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

Document Type. "PUR","CPU","SCN","SDN"

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

=head2 accountname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of the Supplier.

=head2 address1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 1 of Supplier.

=head2 address2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 2 of Supplier.

=head2 address3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 3 of Supplier.

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 30

City of Supplier.

=head2 pin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Pin of Supplier.

=head2 localsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Supplier Local Sales Tax No.

=head2 centralsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Supplier Central Sales Tax No.

=head2 taxidentificationno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Supplier Tax Identification No.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Keep Value while Editing.

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
  "accountname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "address1",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "address2",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "address3",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "city",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "pin",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "localsalestaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "centralsalestaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "taxidentificationno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CRFzclnbuATlusgv88Zhkg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
