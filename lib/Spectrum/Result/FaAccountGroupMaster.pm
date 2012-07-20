use utf8;
package Spectrum::Result::FaAccountGroupMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAccountGroupMaster - Account Group Master stores Account Group Information.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAccountGroupMaster>

=cut

__PACKAGE__->table("FaAccountGroupMaster");

=head1 ACCESSORS

=head2 accountgroupcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Group Code

=head2 accountgroupname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Account Group Name

=head2 parentgroupcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Parent Group Code under which current account group is there.

=head2 accounthead

  data_type: 'smallint'
  is_foreign_key: 1
  is_nullable: 0

Account Head of Account Group (1 - Liabilities, 2 - Assets, 3 - Income, 4 - Expenditure)

=head2 tradingaccount

  data_type: 'bit'
  is_nullable: 0

True if Account Groups comes under Trading Account

=head2 summaryintb

  data_type: 'bit'
  is_nullable: 0

True if Account under this group require summary balance printing in trial balance

=head2 positiontb

  data_type: 'integer'
  is_nullable: 0

Position No. in Trial Balance to Print (Liabilities / Assets / Income / Expenditure order)

=head2 nonaccountinggroup

  data_type: 'bit'
  is_nullable: 0

True if this group is Non Accounting Group (means account under this group will not have any accounting effect)

=head2 grouptype

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Two Characters for Group Type (e.g. CH - Cash, BK - Bank, SD - Debtors etc)

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if Standard Account Group

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
  "accountgroupcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountgroupname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "parentgroupcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "accounthead",
  { data_type => "smallint", is_foreign_key => 1, is_nullable => 0 },
  "tradingaccount",
  { data_type => "bit", is_nullable => 0 },
  "summaryintb",
  { data_type => "bit", is_nullable => 0 },
  "positiontb",
  { data_type => "integer", is_nullable => 0 },
  "nonaccountinggroup",
  { data_type => "bit", is_nullable => 0 },
  "grouptype",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "standard",
  { data_type => "bit", is_nullable => 0 },
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

=item * L</accountgroupcode>

=back

=cut

__PACKAGE__->set_primary_key("accountgroupcode");

=head1 RELATIONS

=head2 accounthead

Type: belongs_to

Related object: L<Spectrum::Result::FaAccountHeadMaster>

=cut

__PACKAGE__->belongs_to(
  "accounthead",
  "Spectrum::Result::FaAccountHeadMaster",
  { accounthead => "accounthead" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 fa_account_group_masters

Type: has_many

Related object: L<Spectrum::Result::FaAccountGroupMaster>

=cut

__PACKAGE__->has_many(
  "fa_account_group_masters",
  "Spectrum::Result::FaAccountGroupMaster",
  { "foreign.parentgroupcode" => "self.accountgroupcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_account_masters

Type: has_many

Related object: L<Spectrum::Result::FaAccountMaster>

=cut

__PACKAGE__->has_many(
  "fa_account_masters",
  "Spectrum::Result::FaAccountMaster",
  { "foreign.parentgroupcode" => "self.accountgroupcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parentgroupcode

Type: belongs_to

Related object: L<Spectrum::Result::FaAccountGroupMaster>

=cut

__PACKAGE__->belongs_to(
  "parentgroupcode",
  "Spectrum::Result::FaAccountGroupMaster",
  { accountgroupcode => "parentgroupcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Sd3pmTe2RVgaFAeOh/SbHQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
