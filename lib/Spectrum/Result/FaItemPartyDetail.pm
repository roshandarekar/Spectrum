use utf8;
package Spectrum::Result::FaItemPartyDetail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemPartyDetail

=head1 DESCRIPTION

Item Party Detail Master Store Party Item wise Last Sales or Purchase Detail.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemPartyDetail>

=cut

__PACKAGE__->table("FaItemPartyDetail");

=head1 ACCESSORS

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code for which Party wise detal has stored

=head2 partycode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Party code for which item sales or purchase detail has stored

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Year of Transaction

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch of transaction

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Transaction

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code of Transaction

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No. of Transaction

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Document Date of Transaction

=head2 billno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Bill No. of Party

=head2 billdate

  data_type: 'datetime'
  is_nullable: 0

Bill Date of party

=head2 quantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity of Transaction

=head2 quantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity1 of Transaction

=head2 rate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Rate of Transaction

=head2 per

  data_type: 'integer'
  is_nullable: 0

Per of Transaction

=head2 discpercentage

  data_type: 'real'
  is_nullable: 0

Discount percentate of transction

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Tax Code of Transaction

=cut

__PACKAGE__->add_columns(
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "partycode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
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
  "billno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "billdate",
  { data_type => "datetime", is_nullable => 0 },
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
  "rate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "per",
  { data_type => "integer", is_nullable => 0 },
  "discpercentage",
  { data_type => "real", is_nullable => 0 },
  "taxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
);

=head1 PRIMARY KEY

=over 4

=item * L</itemcode>

=item * L</partycode>

=item * L</branchcode>

=item * L</documenttype>

=back

=cut

__PACKAGE__->set_primary_key("itemcode", "partycode", "branchcode", "documenttype");

=head1 RELATIONS

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8vHw/XepBTUi/a8NJf5DfQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
