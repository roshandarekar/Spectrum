use utf8;
package Spectrum::Result::FaSizeMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaSizeMaster - Size Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaSizeMaster>

=cut

__PACKAGE__->table("FaSizeMaster");

=head1 ACCESSORS

=head2 sizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Size Code of Master

=head2 sizename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Size Description

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

For Selection

=cut

__PACKAGE__->add_columns(
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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

=item * L</sizecode>

=back

=cut

__PACKAGE__->set_primary_key("sizecode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yf0Tr0f80GsdRuI/fLRx/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
