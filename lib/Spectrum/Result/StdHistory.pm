use utf8;
package Spectrum::Result::StdHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdHistory - History stores details of option user has used.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdHistory>

=cut

__PACKAGE__->table("stdHistory");

=head1 ACCESSORS

=head2 userid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Name of User for which record has generated.

=head2 computername

  data_type: 'varchar'
  is_nullable: 0
  size: 70

Name of Computer from which History has Generated

=head2 ipaddress

  data_type: 'varchar'
  is_nullable: 0
  size: 20

IPAddress of Computer from which History has Generated

=head2 optionnumber

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Option No. in which user has Log In or Out

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date on which Record has generated

=head2 systime

  data_type: 'datetime'
  is_nullable: 0

Time on which record has generated

=head2 process

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Process In or Out

=head2 package

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Package from which Record has generated

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "computername",
  { data_type => "varchar", is_nullable => 0, size => 70 },
  "ipaddress",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "optionnumber",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "systime",
  { data_type => "datetime", is_nullable => 0 },
  "process",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 2 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:D4jq9dFZgU5eGydiArdoFg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
