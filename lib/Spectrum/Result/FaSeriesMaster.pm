use utf8;
package Spectrum::Result::FaSeriesMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSeriesMaster - Document Series Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSeriesMaster>

=cut

__PACKAGE__->table("FaSeriesMaster");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type for which Series has stored

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code of Master

=head2 seriesname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Series Name

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
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "seriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "seriesname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
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

=item * L</documenttype>

=item * L</seriescode>

=back

=cut

__PACKAGE__->set_primary_key("documenttype", "seriescode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HeL11sNlo5H+1e1mhbdP2g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
