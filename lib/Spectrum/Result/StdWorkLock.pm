use utf8;
package Spectrum::Result::StdWorkLock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdWorkLock - Work Lock Stores option or Document locks by user.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdWorkLock>

=cut

__PACKAGE__->table("stdWorkLock");

=head1 ACCESSORS

=head2 counter

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

Auto Record Number

=head2 locktype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

1 - Single Option Lock, 2 - All Option Lock, 3 - Master/Entry Edit Lock, 4 - All Entry Lock for Master or Entry

=head2 lockstring

  data_type: 'varchar'
  is_nullable: 0
  size: 100

Option No. / Master Code / Document No. Locked

=head2 userid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Name of User has created lock.

=head2 computername

  data_type: 'varchar'
  is_nullable: 0
  size: 70

Name of Computer from Lock has created.

=head2 ipaddress

  data_type: 'varchar'
  is_nullable: 0
  size: 20

IP Address of computer from lock has created.

=head2 package

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Package from which Lock has creted.

=cut

__PACKAGE__->add_columns(
  "counter",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "locktype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "lockstring",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "userid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "computername",
  { data_type => "varchar", is_nullable => 0, size => 70 },
  "ipaddress",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 2 },
);

=head1 PRIMARY KEY

=over 4

=item * L</counter>

=item * L</computername>

=item * L</lockstring>

=item * L</locktype>

=item * L</ipaddress>

=back

=cut

__PACKAGE__->set_primary_key("counter", "computername", "lockstring", "locktype", "ipaddress");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cXdMFKZDK+vC87mR1MREAg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
