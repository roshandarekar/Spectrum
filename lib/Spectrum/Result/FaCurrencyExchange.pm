use utf8;
package Spectrum::Result::FaCurrencyExchange;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaCurrencyExchange

=head1 DESCRIPTION

Currency Exchange stores Date wise Currency Exchange Rate for Sale & Purchase.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaCurrencyExchange>

=cut

__PACKAGE__->table("FaCurrencyExchange");

=head1 ACCESSORS

=head2 currencycode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Currency Code for Exchante Rate

=head2 date

  data_type: 'datetime'
  is_nullable: 0

Date of Exchange Rate

=head2 pexchangerate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Purchase Exchange Rate

=head2 sexchangerate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Sell Exchange Rate

=cut

__PACKAGE__->add_columns(
  "currencycode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "date",
  { data_type => "datetime", is_nullable => 0 },
  "pexchangerate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "sexchangerate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</currencycode>

=item * L</date>

=back

=cut

__PACKAGE__->set_primary_key("currencycode", "date");

=head1 RELATIONS

=head2 currencycode

Type: belongs_to

Related object: L<Spectrum::Result::FaCurrencyMaster>

=cut

__PACKAGE__->belongs_to(
  "currencycode",
  "Spectrum::Result::FaCurrencyMaster",
  { currencycode => "currencycode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dvdWSsIDOAduX+CT426Gig


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
