use utf8;
package Spectrum::Result::FaCurrencyMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaCurrencyMaster - Currency Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaCurrencyMaster>

=cut

__PACKAGE__->table("FaCurrencyMaster");

=head1 ACCESSORS

=head2 currencycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Currency Code of Master

=head2 currencyname

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Currency Name

=head2 currencysign

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Currency Sign (e.g. $)

=head2 currencydecimal

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Currency Decimal

=head2 currencydecimalsign

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Currency Decimal Sign

=head2 exchangerate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Currency Exchange Rate

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
  "currencycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "currencyname",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "currencysign",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "currencydecimal",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "currencydecimalsign",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "exchangerate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
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

=item * L</currencycode>

=back

=cut

__PACKAGE__->set_primary_key("currencycode");

=head1 RELATIONS

=head2 fa_currency_exchanges

Type: has_many

Related object: L<Spectrum::Result::FaCurrencyExchange>

=cut

__PACKAGE__->has_many(
  "fa_currency_exchanges",
  "Spectrum::Result::FaCurrencyExchange",
  { "foreign.currencycode" => "self.currencycode" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NqfPJCRFrqkAT9IWjTHTwQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
