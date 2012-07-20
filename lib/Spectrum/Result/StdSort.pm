use utf8;
package Spectrum::Result::StdSort;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdSort - Sort store customised sorting detail.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdSort>

=cut

__PACKAGE__->table("stdSort");

=head1 ACCESSORS

=head2 reportname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Name of Report for Sort is Required

=head2 customisedname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Nothing will Store Only to compatible with stdReports for Exporting/Importing Masters.

=head2 sortname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Description of Sorting.

=head2 fieldandorder

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Sort Field Name & Description

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Keep Value while Editing.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

If Yes then Entry has Locked Item Masters.

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

System Date on Entry Entered.

=head2 package

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Package Name from entry has done.

=head2 used

  data_type: 'bit'
  is_nullable: 0

Is Used

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection.

=cut

__PACKAGE__->add_columns(
  "reportname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "customisedname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "sortname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "fieldandorder",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</reportname>

=item * L</sortname>

=back

=cut

__PACKAGE__->set_primary_key("reportname", "sortname");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6xt78frIZ8lVLlfAmE5nHA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
