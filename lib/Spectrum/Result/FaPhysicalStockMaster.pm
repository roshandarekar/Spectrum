use utf8;
package Spectrum::Result::FaPhysicalStockMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaPhysicalStockMaster - Physical Stock Master stores Item Date wise Physical Stock.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaPhysicalStockMaster>

=cut

__PACKAGE__->table("FaPhysicalStockMaster");

=head1 ACCESSORS

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code for which Physical Stock has entered

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code for which Physical Stock has entered

=head2 colorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Color Code for which Physical Stock has entered

=head2 sizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Size Code for which Physical Stock has entered

=head2 physicalstockquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Physical Stock Quantity in Main Unit

=head2 physicalstockquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Physical Stock Quantity in other unit

=head2 physicalstockdate

  data_type: 'datetime'
  is_nullable: 0

Physical Stock Date.

=cut

__PACKAGE__->add_columns(
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "physicalstockquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "physicalstockquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "physicalstockdate",
  { data_type => "datetime", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</itemcode>

=item * L</storecode>

=item * L</colorcode>

=item * L</sizecode>

=item * L</physicalstockdate>

=back

=cut

__PACKAGE__->set_primary_key(
  "itemcode",
  "storecode",
  "colorcode",
  "sizecode",
  "physicalstockdate",
);

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:V8LVhOpHFXrf29KKGY4zfA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
