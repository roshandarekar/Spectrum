use utf8;
package Spectrum::Result::FaItemValuation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemValuation - Item Valuation store Valuation Code & Description

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemValuation>

=cut

__PACKAGE__->table("FaItemValuation");

=head1 ACCESSORS

=head2 valuation

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Valuation Character

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Valuation Description

=cut

__PACKAGE__->add_columns(
  "valuation",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</valuation>

=back

=cut

__PACKAGE__->set_primary_key("valuation");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:e1LxlaNXwzUO+r/JS5c5CQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
