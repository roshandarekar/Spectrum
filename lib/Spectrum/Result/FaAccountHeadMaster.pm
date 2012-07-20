use utf8;
package Spectrum::Result::FaAccountHeadMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAccountHeadMaster

=head1 DESCRIPTION

Account Head Master Store Fixed 4 Records of Account Head (e.g. Liabilities / Assets / Income / Expenditure)

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAccountHeadMaster>

=cut

__PACKAGE__->table("FaAccountHeadMaster");

=head1 ACCESSORS

=head2 accounthead

  data_type: 'smallint'
  is_nullable: 0

Account Head (1 - Liabilities, 2 - Assets, 3 - Income, 4 - Expenditure)

=head2 accountheadname

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Account Head Name

=cut

__PACKAGE__->add_columns(
  "accounthead",
  { data_type => "smallint", is_nullable => 0 },
  "accountheadname",
  { data_type => "varchar", is_nullable => 0, size => 15 },
);

=head1 PRIMARY KEY

=over 4

=item * L</accounthead>

=back

=cut

__PACKAGE__->set_primary_key("accounthead");

=head1 RELATIONS

=head2 fa_account_group_masters

Type: has_many

Related object: L<Spectrum::Result::FaAccountGroupMaster>

=cut

__PACKAGE__->has_many(
  "fa_account_group_masters",
  "Spectrum::Result::FaAccountGroupMaster",
  { "foreign.accounthead" => "self.accounthead" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Z97mzPseD/D0jcbhOkgquw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
