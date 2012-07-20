use utf8;
package Spectrum::Result::PaShiftMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::PaShiftMaster - Shift Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<PaShiftMaster>

=cut

__PACKAGE__->table("PaShiftMaster");

=head1 ACCESSORS

=head2 shiftcode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Shift Code

=head2 starttime

  data_type: 'real'
  is_nullable: 0

Start Time of Shift

=head2 endtime

  data_type: 'real'
  is_nullable: 0

End Time of Shift

=head2 minimumhours

  data_type: 'real'
  is_nullable: 0

Minimum Working Hours

=head2 standard

  data_type: 'bit'
  is_nullable: 0

TRUE if it is Default Standard Code.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

TRUE if Code  is Locked.

=head2 used

  data_type: 'bit'
  is_nullable: 0

TRUE if Code is used in Entry.

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date of Which Code has Created

=head2 selected

  data_type: 'bit'
  is_nullable: 0

Variable for Selection Only.

=cut

__PACKAGE__->add_columns(
  "shiftcode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "starttime",
  { data_type => "real", is_nullable => 0 },
  "endtime",
  { data_type => "real", is_nullable => 0 },
  "minimumhours",
  { data_type => "real", is_nullable => 0 },
  "standard",
  { data_type => "bit", is_nullable => 0 },
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

=item * L</shiftcode>

=back

=cut

__PACKAGE__->set_primary_key("shiftcode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Hsg5BvOJUDRUKePjrNSB3g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
