use utf8;
package Spectrum::Result::FaProcessMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaProcessMaster - Process Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaProcessMaster>

=cut

__PACKAGE__->table("FaProcessMaster");

=head1 ACCESSORS

=head2 processcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Process Code of Master for Production

=head2 processname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Process Name

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
  "processcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "processname",
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

=item * L</processcode>

=back

=cut

__PACKAGE__->set_primary_key("processcode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sJeCtux05toWJg31rMoLpg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
