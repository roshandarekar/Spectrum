use utf8;
package Spectrum::Result::FaStateMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaStateMaster - State Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaStateMaster>

=cut

__PACKAGE__->table("FaStateMaster");

=head1 ACCESSORS

=head2 statecode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

State Code of Master

=head2 statename

  data_type: 'varchar'
  is_nullable: 0
  size: 30

State Name

=head2 regioncode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Region Code under which this state is coming

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
  "statecode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "statename",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "regioncode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
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

=item * L</statecode>

=back

=cut

__PACKAGE__->set_primary_key("statecode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3txp6+JEDh0oBqk6BpxqoA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
