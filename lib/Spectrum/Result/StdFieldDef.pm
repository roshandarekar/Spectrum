use utf8;
package Spectrum::Result::StdFieldDef;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdFieldDef

=head1 DESCRIPTION

Field Defination stores Field Defination of Customised Fields.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdFieldDef>

=cut

__PACKAGE__->table("stdFieldDef");

=head1 ACCESSORS

=head2 documenttypemaster

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Document Type or Master for which Field Setup has defined

=head2 tablename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of Table in which field has to create

=head2 fieldno

  data_type: 'smallint'
  is_nullable: 0

Serial No. of Field Defined.

=head2 fieldsno

  data_type: 'integer'
  is_nullable: 0

Unique Field Serial No. for Each Record (Like AutoNumber Once Generated then Can't Change) specially for Document Designing

=head2 askat

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Ask level of Field Document or Product Level

=head2 askposition

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Ask Position of field before or after

=head2 fielddescription

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Field Description

=head2 fieldname

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Field Name

=head2 fieldtype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Type of Field S - String, D - Date, N - Numeric, L - Logical

=head2 fieldlength

  data_type: 'smallint'
  is_nullable: 0

Length of Field

=head2 fielddecimal

  data_type: 'smallint'
  is_nullable: 0

Decimal Point of Field in case of numeric field

=head2 formulabefore

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Formula to be run as soon as field got focus

=head2 formulaafter

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Formula to be run as soon as field lost focus

=head2 validation

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Formula to be run before Field lost his focus

=head2 when

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Formula to be run to allow focus on this field

=head2 displaytotal

  data_type: 'bit'
  is_nullable: 0

True to Display total at bottom for product level numeric field

=head2 tooltiptext

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Tool Tip to display when user put mouse pointer on this field

=cut

__PACKAGE__->add_columns(
  "documenttypemaster",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "tablename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "fieldno",
  { data_type => "smallint", is_nullable => 0 },
  "fieldsno",
  { data_type => "integer", is_nullable => 0 },
  "askat",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "askposition",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "fielddescription",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "fieldname",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "fieldtype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "fieldlength",
  { data_type => "smallint", is_nullable => 0 },
  "fielddecimal",
  { data_type => "smallint", is_nullable => 0 },
  "formulabefore",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "formulaafter",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "validation",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "when",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "displaytotal",
  { data_type => "bit", is_nullable => 0 },
  "tooltiptext",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<FieldSno>

=over 4

=item * L</fieldsno>

=back

=cut

__PACKAGE__->add_unique_constraint("FieldSno", ["fieldsno"]);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QUvd0W/AP4vD0lF35jFmmQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
