use utf8;
package Spectrum::Result::FaCompanyAsset;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaCompanyAsset

=head1 DESCRIPTION

Company Assets Store Fixed Assets Accounts & Related Depreciation Fund Account Details to Print in Fixed Assets Schedule as Per Schedule 6 of Companies Act.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaCompanyAssets>

=cut

__PACKAGE__->table("FaCompanyAssets");

=head1 ACCESSORS

=head2 assetsreportcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Report Code entered in Balance Sheet for Fixed Assets Gross Block.

=head2 depreciationreportcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Report Code Entered in Balance Sheet for Depreciation Block.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Contineous Serial No. of Lines

=head2 assetsgroupno

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Group No. Entered in Schedule of Fixed Assets.

=head2 assetsaccountgroupcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Group from which Figure has to pickup.

=head2 assetsaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code from which Figure has to Pickkup.

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Description of Assets

=head2 depreciationgroupno

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Group No. Entered in Schedule of Depreciation.

=head2 depreciationaccountgroupcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Group from which Figure has to pickup.

=head2 depreciationaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code from which Figure has to Pickkup.

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
  "assetsreportcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "depreciationreportcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "assetsgroupno",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "assetsaccountgroupcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "assetsaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "depreciationgroupno",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "depreciationaccountgroupcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "depreciationaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
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


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bHtRzzcl2LHvAHDQqF19nQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
