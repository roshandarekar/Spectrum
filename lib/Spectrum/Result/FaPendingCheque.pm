use utf8;
package Spectrum::Result::FaPendingCheque;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaPendingCheque

=head1 DESCRIPTION

Pending Cheques stores opening uncleared cheques entered through bank master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaPendingCheques>

=cut

__PACKAGE__->table("FaPendingCheques");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Document Year of Pending Cheque

=head2 branchcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Branch Code of Pending Cheque

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Pending Cheque

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code of Pending Cheque

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No. of pending cheque

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Document Date of Pending Cheque

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Account Code of Pending Cheque

=head2 accountsno

  data_type: 'smallint'
  is_nullable: 0

Account Sno of Pending Cheque

=head2 chequeno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Cheque No. of Pending Cheque

=head2 amount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Amount of Pending Cheque

=head2 recpay

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Type of Pending Cheque (R- Receipt , P - Payment)

=head2 narration

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Narration of Pending Cheque

=head2 cleared

  data_type: 'bit'
  is_nullable: 0

True if Cleared

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Edit Flag

=head2 lockflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Locked Flag

=head2 package

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Package from which Document has entered

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
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "accountsno",
  { data_type => "smallint", is_nullable => 0 },
  "chequeno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "amount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "recpay",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "narration",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "cleared",
  { data_type => "bit", is_nullable => 0 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "lockflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 2 },
);

=head1 PRIMARY KEY

=over 4

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

=item * L</accountcode>

=item * L</accountsno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "accountcode",
  "accountsno",
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NJiVjOOspMdFIDqpF3Ij8w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
