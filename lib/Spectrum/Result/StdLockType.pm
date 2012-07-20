use utf8;
package Spectrum::Result::StdLockType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdLockType - Lock Types stores fixed four records for types of locks.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdLockTypes>

=cut

__PACKAGE__->table("stdLockTypes");

=head1 ACCESSORS

=head2 locktype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Type of Lock perform by locking class

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Lock Description

=cut

__PACKAGE__->add_columns(
  "locktype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</locktype>

=back

=cut

__PACKAGE__->set_primary_key("locktype");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RUYUaOTKZ66yuWHy31dbug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
