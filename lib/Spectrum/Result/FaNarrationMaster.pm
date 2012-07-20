use utf8;
package Spectrum::Result::FaNarrationMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaNarrationMaster - Narration Master

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaNarrationMaster>

=cut

__PACKAGE__->table("FaNarrationMaster");

=head1 ACCESSORS

=head2 narrationcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Narration Code

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Standard Narration

=head2 narration

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Standard Narration.

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

For Selection

=cut

__PACKAGE__->add_columns(
  "narrationcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "narration",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</narrationcode>

=back

=cut

__PACKAGE__->set_primary_key("narrationcode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:B2IBy0RUQw8HDfWQwLKAOA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
