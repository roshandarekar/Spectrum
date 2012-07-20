use utf8;
package Spectrum::Result::FaAreaMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAreaMaster - Area Master 

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAreaMaster>

=cut

__PACKAGE__->table("FaAreaMaster");

=head1 ACCESSORS

=head2 areacode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Area code

=head2 areaname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Area name

=head2 statecode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

State Code in which area belongs to

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
  "areacode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "areaname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "statecode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
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

=item * L</areacode>

=back

=cut

__PACKAGE__->set_primary_key("areacode");

=head1 RELATIONS

=head2 fa_account_address_masters

Type: has_many

Related object: L<Spectrum::Result::FaAccountAddressMaster>

=cut

__PACKAGE__->has_many(
  "fa_account_address_masters",
  "Spectrum::Result::FaAccountAddressMaster",
  { "foreign.areacode" => "self.areacode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_agent_masters

Type: has_many

Related object: L<Spectrum::Result::FaAgentMaster>

=cut

__PACKAGE__->has_many(
  "fa_agent_masters",
  "Spectrum::Result::FaAgentMaster",
  { "foreign.areacode" => "self.areacode" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:soKG2qg7p5qlzBHvm4mmlA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
