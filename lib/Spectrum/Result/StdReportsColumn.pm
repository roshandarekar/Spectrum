use utf8;
package Spectrum::Result::StdReportsColumn;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdReportsColumn

=head1 DESCRIPTION

Reports Columns stores Groups & Columns Defination of Standard Reports.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdReportsColumns>

=cut

__PACKAGE__->table("stdReportsColumns");

=head1 ACCESSORS

=head2 reportname

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 30

Name of Standard Report.

=head2 customisedname

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 30

Name of Customised Report for above Standard Report.

=head2 isgroupfield

  data_type: 'bit'
  is_nullable: 0

True if Current Column Content is Group Countent.

=head2 groupcolumnno

  data_type: 'smallint'
  is_nullable: 0

Group or Column no. on base of position.

=head2 printgroupheading

  data_type: 'bit'
  is_nullable: 0

True if Report Required to Print Group Heading.

=head2 printgrouptotal

  data_type: 'bit'
  is_nullable: 0

True if Report Required to Print Group Total.

=head2 grouptotaldescription

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Description to print at Group Total.

=head2 skiptotalblankline

  data_type: 'bit'
  is_nullable: 0

True to Skip Blank line in case group total is not required.

=head2 skipgrouplevelstar

  data_type: 'bit'
  is_nullable: 0

True to Skip Printing (*) sign before group descriptipn.

=head2 ejectpagebeforegroup

  data_type: 'bit'
  is_nullable: 0

True if Report Required to Eject Print as soon as new group starts.

=head2 content1

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Expression to Print at Line 1 of Column or Group.

=head2 content1iscode

  data_type: 'bit'
  is_nullable: 0

True if Expression is of more than one line.

=head2 suppressduplicate1

  data_type: 'bit'
  is_nullable: 0

True if report skip print value if value is same as above record. (Except change of any group)

=head2 absolutevalue1

  data_type: 'bit'
  is_nullable: 0

True if it require to print absolute Numeric Value.

=head2 totalrequired1

  data_type: 'bit'
  is_nullable: 0

True if Total Required for this Column.

=head2 content2

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Expression to Print at Line 2 of Column or Group.

=head2 content2iscode

  data_type: 'bit'
  is_nullable: 0

True if Expression is of more than one line.

=head2 suppressduplicate2

  data_type: 'bit'
  is_nullable: 0

True if report skip print value if value is same as above record. (Except change of any group)

=head2 absolutevalue2

  data_type: 'bit'
  is_nullable: 0

True if it require to print absolute Numeric Value.

=head2 totalrequired2

  data_type: 'bit'
  is_nullable: 0

True if Total Required for this Column.

=head2 content3

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Expression to Print at Line 3 of Column or Group.

=head2 content3iscode

  data_type: 'bit'
  is_nullable: 0

True if Expression is of more than one line.

=head2 suppressduplicate3

  data_type: 'bit'
  is_nullable: 0

True if report skip print value if value is same as above record. (Except change of any group)

=head2 absolutevalue3

  data_type: 'bit'
  is_nullable: 0

True if it require to print absolute Numeric Value.

=head2 totalrequired3

  data_type: 'bit'
  is_nullable: 0

True if Total Required for this Column.

=head2 width

  data_type: 'smallint'
  is_nullable: 0

Width of Column in Characters.

=head2 decimalpoint

  data_type: 'smallint'
  is_nullable: 0

Decimal Point of column for Numeric Column.

=head2 headingline1

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Heading Line 1 of Column.

=head2 headingline2

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Heading Line 2 of Column.

=head2 headingline3

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Heading Line 3 of Column.

=head2 headingline4

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Heading Line 4 of Column.

=head2 headingline5

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Heading Line 5 of Column.

=head2 columnspacing

  data_type: 'smallint'
  is_nullable: 0

Character spaces to leave after the current column

=head2 columncondition

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Conditon to print column.

=head2 addcolumn

  data_type: 'bit'
  is_nullable: 0

Temporary Value to Add Column in report if condition satisfy

=head2 columntype

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Type of Column (String, Numeric, Date, Logical )

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Field for Editing.

=cut

__PACKAGE__->add_columns(
  "reportname",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 30 },
  "customisedname",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 30 },
  "isgroupfield",
  { data_type => "bit", is_nullable => 0 },
  "groupcolumnno",
  { data_type => "smallint", is_nullable => 0 },
  "printgroupheading",
  { data_type => "bit", is_nullable => 0 },
  "printgrouptotal",
  { data_type => "bit", is_nullable => 0 },
  "grouptotaldescription",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "skiptotalblankline",
  { data_type => "bit", is_nullable => 0 },
  "skipgrouplevelstar",
  { data_type => "bit", is_nullable => 0 },
  "ejectpagebeforegroup",
  { data_type => "bit", is_nullable => 0 },
  "content1",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "content1iscode",
  { data_type => "bit", is_nullable => 0 },
  "suppressduplicate1",
  { data_type => "bit", is_nullable => 0 },
  "absolutevalue1",
  { data_type => "bit", is_nullable => 0 },
  "totalrequired1",
  { data_type => "bit", is_nullable => 0 },
  "content2",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "content2iscode",
  { data_type => "bit", is_nullable => 0 },
  "suppressduplicate2",
  { data_type => "bit", is_nullable => 0 },
  "absolutevalue2",
  { data_type => "bit", is_nullable => 0 },
  "totalrequired2",
  { data_type => "bit", is_nullable => 0 },
  "content3",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "content3iscode",
  { data_type => "bit", is_nullable => 0 },
  "suppressduplicate3",
  { data_type => "bit", is_nullable => 0 },
  "absolutevalue3",
  { data_type => "bit", is_nullable => 0 },
  "totalrequired3",
  { data_type => "bit", is_nullable => 0 },
  "width",
  { data_type => "smallint", is_nullable => 0 },
  "decimalpoint",
  { data_type => "smallint", is_nullable => 0 },
  "headingline1",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "headingline2",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "headingline3",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "headingline4",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "headingline5",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "columnspacing",
  { data_type => "smallint", is_nullable => 0 },
  "columncondition",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "addcolumn",
  { data_type => "bit", is_nullable => 0 },
  "columntype",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</reportname>

=item * L</customisedname>

=item * L</isgroupfield>

=item * L</groupcolumnno>

=back

=cut

__PACKAGE__->set_primary_key("reportname", "customisedname", "isgroupfield", "groupcolumnno");

=head1 RELATIONS

=head2 std_report

Type: belongs_to

Related object: L<Spectrum::Result::StdReport>

=cut

__PACKAGE__->belongs_to(
  "std_report",
  "Spectrum::Result::StdReport",
  { customisedname => "customisedname", reportname => "reportname" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vHWDGqiW2zxEOBPG7ie+fA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
