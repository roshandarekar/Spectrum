use utf8;
package Spectrum::Result::StdAssist;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdAssist

=head1 DESCRIPTION

Standard Assist stores defination of  list received by press F3 key or by clicking List Button of toolbar

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdAssist>

=cut

__PACKAGE__->table("stdAssist");

=head1 ACCESSORS

=head2 formname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Name of the form for which List has created

=head2 controlname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Name (Tag or Datafield in case of Grid Column) of Control for which List has created

=head2 tag

  data_type: 'varchar'
  is_nullable: 0
  size: 50

In case one control required different type of list we use tag. (e.g. Batch No. list for Batch wise Valuation & Pharma RG)

=head2 caption

  data_type: 'varchar'
  is_nullable: 0
  size: 100

Caption to display at title bar of List form.

=head2 commandtype

  data_type: 'smallint'
  is_nullable: 0

Type of Command is Command Text (SQL String) or Stored Procedure. (Now we don't use it)

=head2 connectiontype

  data_type: 'smallint'
  is_nullable: 0

Type of connection is in use.(Now not required).

=head2 commandtext

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

SQL String to get list of records.

=head2 fieldno

  data_type: 'smallint'
  is_nullable: 0

Field No. value to be pickup.

=head2 controlname1

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Other Control Name whose Value to be pickup.

=head2 fieldno1

  data_type: 'smallint'
  is_nullable: 0

Field No. value to be pickup for other Control Name1.

=head2 controlname2

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Other Control Name whose Value to be pickup.

=head2 fieldno2

  data_type: 'smallint'
  is_nullable: 0

Field No. value to be pickup for other Control Name2.

=head2 controlname3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Other Control Name whose Value to be pickup.

=head2 fieldno3

  data_type: 'smallint'
  is_nullable: 0

Field No. value to be pickup for other Control Name3.

=head2 controlname4

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Other Control Name whose Value to be pickup.

=head2 fieldno4

  data_type: 'smallint'
  is_nullable: 0

Field No. value to be pickup for other Control Name4.

=head2 controlname5

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Other Control Name whose Value to be pickup.

=head2 fieldno5

  data_type: 'smallint'
  is_nullable: 0

Field No. value to be pickup for other Control Name5.

=head2 controlname6

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Other Control Name whose Value to be pickup.

=head2 fieldno6

  data_type: 'smallint'
  is_nullable: 0

Field No. value to be pickup for other Control Name6.

=head2 sortfieldno

  data_type: 'smallint'
  is_nullable: 0

Field No. on which record has sorted to display Icon at column header.

=head2 sortorder

  data_type: 'smallint'
  is_nullable: 0

Order in which it has sorted (Ascending or Descending)

=head2 indexname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of Index to be use (Now No use)

=head2 parameters

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Name of Parameaters to be passed.

=cut

__PACKAGE__->add_columns(
  "formname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "controlname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "tag",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "caption",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "commandtype",
  { data_type => "smallint", is_nullable => 0 },
  "connectiontype",
  { data_type => "smallint", is_nullable => 0 },
  "commandtext",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "fieldno",
  { data_type => "smallint", is_nullable => 0 },
  "controlname1",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "fieldno1",
  { data_type => "smallint", is_nullable => 0 },
  "controlname2",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "fieldno2",
  { data_type => "smallint", is_nullable => 0 },
  "controlname3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "fieldno3",
  { data_type => "smallint", is_nullable => 0 },
  "controlname4",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "fieldno4",
  { data_type => "smallint", is_nullable => 0 },
  "controlname5",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "fieldno5",
  { data_type => "smallint", is_nullable => 0 },
  "controlname6",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "fieldno6",
  { data_type => "smallint", is_nullable => 0 },
  "sortfieldno",
  { data_type => "smallint", is_nullable => 0 },
  "sortorder",
  { data_type => "smallint", is_nullable => 0 },
  "indexname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "parameters",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</formname>

=item * L</controlname>

=item * L</tag>

=back

=cut

__PACKAGE__->set_primary_key("formname", "controlname", "tag");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WunH91zEpHxioK8Ic+601Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
