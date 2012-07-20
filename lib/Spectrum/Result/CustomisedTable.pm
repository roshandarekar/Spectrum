use utf8;
package Spectrum::Result::CustomisedTable;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::CustomisedTable

=head1 DESCRIPTION

Enter Name of customised Table which you had created in this database. So When version change it will create and Import data from original table.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<CustomisedTables>

=cut

__PACKAGE__->table("CustomisedTables");

=head1 ACCESSORS

=head2 tablenumber

  data_type: 'integer'
  is_nullable: 0

Number position to Create Customised Tables. Parent Table No. must be before any child table.

=head2 tablename

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Name of the customised Table is created.

=cut

__PACKAGE__->add_columns(
  "tablenumber",
  { data_type => "integer", is_nullable => 0 },
  "tablename",
  { data_type => "varchar", is_nullable => 0, size => 60 },
);

=head1 PRIMARY KEY

=over 4

=item * L</tablenumber>

=back

=cut

__PACKAGE__->set_primary_key("tablenumber");

=head1 UNIQUE CONSTRAINTS

=head2 C<TableName>

=over 4

=item * L</tablename>

=back

=cut

__PACKAGE__->add_unique_constraint("TableName", ["tablename"]);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tLPOXOqTdE4FOyPa/WTJxg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
