use utf8;
package Spectrum::Result::FaProductCatMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaProductCatMaster - Product Category Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaProductCatMaster>

=cut

__PACKAGE__->table("FaProductCatMaster");

=head1 ACCESSORS

=head2 categorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Product Category Code of Master

=head2 categoryname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Product Category name

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
  "categorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "categoryname",
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

=item * L</categorycode>

=back

=cut

__PACKAGE__->set_primary_key("categorycode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hGNlfQ28vF7vRXZ3kpdPTA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
