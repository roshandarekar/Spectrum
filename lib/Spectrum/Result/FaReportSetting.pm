use utf8;
package Spectrum::Result::FaReportSetting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaReportSetting

=head1 DESCRIPTION

Report Setting Stores Paramater entered by user for each report option.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaReportSetting>

=cut

__PACKAGE__->table("FaReportSetting");

=head1 ACCESSORS

=head2 userid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

User for Which Report Setting has saved.

=head2 reportname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Name of Report for Which Setting has Saved

=head2 settingtext

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Text for Report Setting

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "reportname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "settingtext",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=item * L</reportname>

=back

=cut

__PACKAGE__->set_primary_key("userid", "reportname");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8B6fnaUaAkcR1Aobb/vXbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
