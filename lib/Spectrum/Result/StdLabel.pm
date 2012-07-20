use utf8;
package Spectrum::Result::StdLabel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdLabel - Label stores Defination of Customised Labels.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdLabel>

=cut

__PACKAGE__->table("stdLabel");

=head1 ACCESSORS

=head2 labelname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Name of Label to Defination.

=head2 customisedname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Customised Name of Label Defination.

=head2 customiseddescription

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Description of Customised Name.

=head2 labelheight

  data_type: 'smallint'
  is_nullable: 0

Height of Label in Lines.

=head2 labelwidth

  data_type: 'smallint'
  is_nullable: 0

Width of Label in Characters

=head2 linespacing

  data_type: 'smallint'
  is_nullable: 0

Line Spacing between Label.

=head2 columnspacing

  data_type: 'smallint'
  is_nullable: 0

Column (Character) Spacing between Label.

=head2 noofcolumns

  data_type: 'smallint'
  is_nullable: 0

Total No. of Columns.

=head2 defaultfont

  data_type: 'smallint'
  is_nullable: 0

Default Font to Print Label

=head2 labelquantityfield

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Field Name Which is to be use to print Label Quantity Else default 1 per record.

=head2 printblanklines

  data_type: 'bit'
  is_nullable: 0

If Yes Blank Line will Print else Next Line will Move Up.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Line No. for Uniq Record

=head2 content

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Content to Print on Label.

=head2 contentfont

  data_type: 'smallint'
  is_nullable: 0

Font in which Line has to Print. 0 - Normal, 11 - Bright as per DOS Font Defination.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Edit Flag while Creating

=cut

__PACKAGE__->add_columns(
  "labelname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "customisedname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "customiseddescription",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "labelheight",
  { data_type => "smallint", is_nullable => 0 },
  "labelwidth",
  { data_type => "smallint", is_nullable => 0 },
  "linespacing",
  { data_type => "smallint", is_nullable => 0 },
  "columnspacing",
  { data_type => "smallint", is_nullable => 0 },
  "noofcolumns",
  { data_type => "smallint", is_nullable => 0 },
  "defaultfont",
  { data_type => "smallint", is_nullable => 0 },
  "labelquantityfield",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "printblanklines",
  { data_type => "bit", is_nullable => 0 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "content",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "contentfont",
  { data_type => "smallint", is_nullable => 0 },
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</labelname>

=item * L</customisedname>

=item * L</sno>

=back

=cut

__PACKAGE__->set_primary_key("labelname", "customisedname", "sno");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UHfCyoJbXk/H70zBAcEhHg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
