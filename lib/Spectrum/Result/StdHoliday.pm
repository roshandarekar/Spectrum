use utf8;
package Spectrum::Result::StdHoliday;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdHoliday - Holiday stores List of Holiday.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdHoliday>

=cut

__PACKAGE__->table("stdHoliday");

=head1 ACCESSORS

=head2 date

  data_type: 'datetime'
  is_nullable: 0

Date of Holiday.

=head2 day

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Week Day of Holiday

=head2 holidaytype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Weekly off or Holiday Type.

=head2 holidaydescription

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Description of Holiday.

=cut

__PACKAGE__->add_columns(
  "date",
  { data_type => "datetime", is_nullable => 0 },
  "day",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "holidaytype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "holidaydescription",
  { data_type => "varchar", is_nullable => 0, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</date>

=back

=cut

__PACKAGE__->set_primary_key("date");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:c4NE5UitvMxAXEg5Lvp4NQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
