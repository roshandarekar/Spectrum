use utf8;
package Spectrum::Result::FaProductGroupMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaProductGroupMaster - Product Group Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaProductGroupMaster>

=cut

__PACKAGE__->table("FaProductGroupMaster");

=head1 ACCESSORS

=head2 productgroupcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Product Group Code of Master

=head2 productgroupname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Product Group Name of Master

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
  "productgroupcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "productgroupname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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

=item * L</productgroupcode>

=back

=cut

__PACKAGE__->set_primary_key("productgroupcode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ndaz8n5HW6550Cbdg8ZtIA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
