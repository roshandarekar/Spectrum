use utf8;
package Spectrum::Result::FaSalesmanagerMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSalesmanagerMaster - Sales Manager Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSalesmanagerMaster>

=cut

__PACKAGE__->table("FaSalesmanagerMaster");

=head1 ACCESSORS

=head2 salesmanagercode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Salesmanager Code of Master

=head2 salesmanagername

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Salesmanager Name

=head2 commpercentage

  data_type: 'real'
  is_nullable: 0

Commission Percentage

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
  "salesmanagercode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "salesmanagername",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "commpercentage",
  { data_type => "real", is_nullable => 0 },
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

=item * L</salesmanagercode>

=back

=cut

__PACKAGE__->set_primary_key("salesmanagercode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PhiR4j1wXL3oLtFTVvgkbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
