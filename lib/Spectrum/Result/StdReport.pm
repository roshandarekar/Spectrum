use utf8;
package Spectrum::Result::StdReport;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdReport - Reports stores defination of Standard reports.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdReports>

=cut

__PACKAGE__->table("stdReports");

=head1 ACCESSORS

=head2 reportname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Name of the Standard Report.

=head2 customisedname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Name of the Customised Report for above stanrad report name.

=head2 customiseddescription

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Description of Report.

=head2 recordsource

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

SQL String to be use to get Record. (Not Using at any time)

=head2 reporttitle

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Title of Report

=head2 filtercondition

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Customised Filter Condition to print report.

=head2 printtotal

  data_type: 'bit'
  is_nullable: 0

True if Report required to Print Total at End of Report

=head2 printpagetotal

  data_type: 'bit'
  is_nullable: 0

True if Report required to print Total at end of Page.

=head2 printdoublespace

  data_type: 'bit'
  is_nullable: 0

True if it require to leave one blank line after print one line of record.

=cut

__PACKAGE__->add_columns(
  "reportname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "customisedname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "customiseddescription",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "recordsource",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "reporttitle",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "filtercondition",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "printtotal",
  { data_type => "bit", is_nullable => 0 },
  "printpagetotal",
  { data_type => "bit", is_nullable => 0 },
  "printdoublespace",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</reportname>

=item * L</customisedname>

=back

=cut

__PACKAGE__->set_primary_key("reportname", "customisedname");

=head1 RELATIONS

=head2 std_reports_columns

Type: has_many

Related object: L<Spectrum::Result::StdReportsColumn>

=cut

__PACKAGE__->has_many(
  "std_reports_columns",
  "Spectrum::Result::StdReportsColumn",
  {
    "foreign.customisedname" => "self.customisedname",
    "foreign.reportname"     => "self.reportname",
  },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:i2qPprZphWxywpwTtdSePA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
