use utf8;
package Spectrum::Result::FaItemPartNo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemPartNo

=head1 DESCRIPTION

Item Part No. Master stores party part No. detail of each item if user select.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemPartNo>

=cut

__PACKAGE__->table("FaItemPartNo");

=head1 ACCESSORS

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code for which Party Party No. has stored

=head2 partycode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Party Code for which Item Part No. has store

=head2 partno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Part No. of Party

=cut

__PACKAGE__->add_columns(
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "partycode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "partno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
);

=head1 PRIMARY KEY

=over 4

=item * L</itemcode>

=item * L</partycode>

=item * L</partno>

=back

=cut

__PACKAGE__->set_primary_key("itemcode", "partycode", "partno");

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yPDhkFOA1IUVkGfxdbJYiA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
