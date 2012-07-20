use utf8;
package Spectrum::Result::FaMergeCompany;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaMergeCompany - Merge Company store Company No. & Name wile merging.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaMergeCompany>

=cut

__PACKAGE__->table("FaMergeCompany");

=head1 ACCESSORS

=head2 companyno

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

Company No. has Merged.

=head2 companyname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Name of Company whose Data has merged.

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

for Selection

=cut

__PACKAGE__->add_columns(
  "companyno",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "companyname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
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

=item * L</companyno>

=back

=cut

__PACKAGE__->set_primary_key("companyno");

=head1 UNIQUE CONSTRAINTS

=head2 C<CompanyName>

=over 4

=item * L</companyname>

=back

=cut

__PACKAGE__->add_unique_constraint("CompanyName", ["companyname"]);

=head1 RELATIONS

=head2 fa_merge_balances

Type: has_many

Related object: L<Spectrum::Result::FaMergeBalance>

=cut

__PACKAGE__->has_many(
  "fa_merge_balances",
  "Spectrum::Result::FaMergeBalance",
  { "foreign.companyno" => "self.companyno" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VEzzSV1RUa4S4+ek/BxPqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
