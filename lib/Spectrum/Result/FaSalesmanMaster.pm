use utf8;
package Spectrum::Result::FaSalesmanMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSalesmanMaster - Salesman Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSalesmanMaster>

=cut

__PACKAGE__->table("FaSalesmanMaster");

=head1 ACCESSORS

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Salesman Code of Master

=head2 salesmanname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Saleman Name of Master

=head2 salesmanagercode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Salesmanager Cde of this Salesman

=head2 commpercentage

  data_type: 'real'
  is_nullable: 0

Commission Percentage of this salesman

=head2 creditperiod

  data_type: 'smallint'
  is_nullable: 0

Credit Period of Salesman

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

For Sekectuion

=cut

__PACKAGE__->add_columns(
  "salesmancode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "salesmanname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "salesmanagercode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "commpercentage",
  { data_type => "real", is_nullable => 0 },
  "creditperiod",
  { data_type => "smallint", is_nullable => 0 },
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

=item * L</salesmancode>

=back

=cut

__PACKAGE__->set_primary_key("salesmancode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Zz9nIwM/rQyB5cAxvsWyYQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
