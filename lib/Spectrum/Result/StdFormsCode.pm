use utf8;
package Spectrum::Result::StdFormsCode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdFormsCode - Forms Code Stores Codes to Print Documents 

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdFormsCode>

=cut

__PACKAGE__->table("stdFormsCode");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

Document Type of Form.

=head2 formname

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 20

Document Format Name.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Continous Serial No. of Code. Only to Define Primary Key

=head2 printrow

  data_type: 'smallint'
  is_nullable: 0

Row at Which Content to be Print.

=head2 printcolumn

  data_type: 'smallint'
  is_nullable: 0

Column at which Content to be Print.

=head2 content

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Contents to be Print.

=head2 contenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Type of Content (C - Constant, V - Variables)

=head2 contentfont

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Font in which Content to be Print.

=head2 datatype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Type of Content to Print. (S - String, D - Date, N - Numeric)

=head2 datawidth

  data_type: 'smallint'
  is_nullable: 0

Width of Data to Print. Only in case of Numeric.

=head2 datadecimal

  data_type: 'smallint'
  is_nullable: 0

Decimal Point of Data to Print.

=head2 contentcondition

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Condition to Print Content.

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

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection.

=cut

__PACKAGE__->add_columns(
  "documenttype",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "formname",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 20 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "printrow",
  { data_type => "smallint", is_nullable => 0 },
  "printcolumn",
  { data_type => "smallint", is_nullable => 0 },
  "content",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "contenttype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "contentfont",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "datatype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "datawidth",
  { data_type => "smallint", is_nullable => 0 },
  "datadecimal",
  { data_type => "smallint", is_nullable => 0 },
  "contentcondition",
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
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</documenttype>

=item * L</formname>

=item * L</sno>

=back

=cut

__PACKAGE__->set_primary_key("documenttype", "formname", "sno");

=head1 RELATIONS

=head2 std_form

Type: belongs_to

Related object: L<Spectrum::Result::StdForm>

=cut

__PACKAGE__->belongs_to(
  "std_form",
  "Spectrum::Result::StdForm",
  { documenttype => "documenttype", formname => "formname" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Q+/YCxDd1aoXCF2WQ0vAvQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
