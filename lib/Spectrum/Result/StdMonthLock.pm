use utf8;
package Spectrum::Result::StdMonthLock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdMonthLock - Month Lock Stores Date wise  Documents Locked. 

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdMonthLock>

=cut

__PACKAGE__->table("stdMonthLock");

=head1 ACCESSORS

=head2 userid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

User ID for whose Month / Day Option has Locked.

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Date to be Lock

=head2 locktypes

  data_type: 'varchar'
  is_nullable: 0
  size: 180

Document Types to be Lock

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "documentdate",
  { data_type => "datetime", is_nullable => 0 },
  "locktypes",
  { data_type => "varchar", is_nullable => 0, size => 180 },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=item * L</documentdate>

=back

=cut

__PACKAGE__->set_primary_key("userid", "documentdate");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aWW2sz9ZoMjKaoofyCIPIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
