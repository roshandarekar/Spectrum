use utf8;
package Spectrum::Result::CustomisedIndex;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::CustomisedIndex

=head1 DESCRIPTION

Enter Name of customised Index for standard which you had created in this database. So When version change it will create Index Again.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<CustomisedIndex>

=cut

__PACKAGE__->table("CustomisedIndex");

=head1 ACCESSORS

=head2 tablename

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Name of the Table for which Index has created.

=head2 indexname

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Name of the Customised Index file Created.

=head2 indexfieldsandorder

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Name of Fields and Order on which Index Created.

=cut

__PACKAGE__->add_columns(
  "tablename",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "indexname",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "indexfieldsandorder",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</tablename>

=item * L</indexname>

=back

=cut

__PACKAGE__->set_primary_key("tablename", "indexname");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Br4FsqBopof0djJ2V6Ktbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
