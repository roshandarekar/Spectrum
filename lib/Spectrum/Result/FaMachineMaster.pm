use utf8;
package Spectrum::Result::FaMachineMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaMachineMaster - Machine Master

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaMachineMaster>

=cut

__PACKAGE__->table("FaMachineMaster");

=head1 ACCESSORS

=head2 machinecode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Machine Code of Factory.

=head2 machinename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Machine Description

=head2 location

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Location of Machine at Factory.

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
  "machinecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "machinename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "location",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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

=item * L</machinecode>

=back

=cut

__PACKAGE__->set_primary_key("machinecode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7Jx0fbxRTelmZgzH8G+1HQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
