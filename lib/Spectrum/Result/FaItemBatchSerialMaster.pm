use utf8;
package Spectrum::Result::FaItemBatchSerialMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemBatchSerialMaster

=head1 DESCRIPTION

Item Batch Serial Master stores single record for Batch or SerialNo. wise Valuation Items for Item plus BatchSerial No.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemBatchSerialMaster>

=cut

__PACKAGE__->table("FaItemBatchSerialMaster");

=head1 ACCESSORS

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code for which Batch wise Detail has stored

=head2 batchserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Batch or Serial No. for which detail has stoerd

=head2 mfgdate

  data_type: 'datetime'
  is_nullable: 0

Manufacturing Date of Batch

=head2 expdate

  data_type: 'datetime'
  is_nullable: 0

Expiry Date of Batch

=head2 salesgracedays

  data_type: 'smallint'
  is_nullable: 0

Warn user if batch will expired within days entered while entry

=head2 salesrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Sales rate of Bach

=head2 salesrateper

  data_type: 'smallint'
  is_nullable: 0

Sales Rate per of Batch

=head2 mrp

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

MRP of Batch

=head2 exciserate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Excise Rate of Batch

=head2 basicrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Basic Rate of Batch

=head2 salesrate1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Sales Rate 1 of Batch

=head2 salesrate2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Sales Rate 2 of Batch

=head2 salesrate3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Sales Rate 3 of Batch

=head2 additionaldetail1

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Additional Detail 1 for Batch

=head2 additionaldetail2

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Additional Detail 2 for Batch

=head2 additionaldetail3

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Additional Detail 3 for Batch

=head2 additionaldetail4

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Additional Detail 4 for Batch

=head2 additionaldetail5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Detail 5 for Batch

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Edit Flag

=head2 locktypes

  data_type: 'varchar'
  is_nullable: 0
  size: 180

Document Types for which batch has locked

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if Standard

=head2 locked

  data_type: 'bit'
  is_nullable: 0

True if Locked

=head2 used

  data_type: 'bit'
  is_nullable: 0

True if Used

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date of Creation

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection

=cut

__PACKAGE__->add_columns(
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "batchserialno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "mfgdate",
  { data_type => "datetime", is_nullable => 0 },
  "expdate",
  { data_type => "datetime", is_nullable => 0 },
  "salesgracedays",
  { data_type => "smallint", is_nullable => 0 },
  "salesrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salesrateper",
  { data_type => "smallint", is_nullable => 0 },
  "mrp",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "exciserate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "basicrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salesrate1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salesrate2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salesrate3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "additionaldetail1",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "additionaldetail2",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "additionaldetail3",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "additionaldetail4",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "additionaldetail5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "locktypes",
  { data_type => "varchar", is_nullable => 0, size => 180 },
  "standard",
  { data_type => "bit", is_nullable => 0 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</itemcode>

=item * L</batchserialno>

=back

=cut

__PACKAGE__->set_primary_key("itemcode", "batchserialno");

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:158JtXozVmLxOgneqZTJPQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
