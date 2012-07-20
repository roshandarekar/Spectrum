use utf8;
package Spectrum::Result::FaTdsmaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaTdsmaster - TDS Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaTDSMaster>

=cut

__PACKAGE__->table("FaTDSMaster");

=head1 ACCESSORS

=head2 tdscode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

TDS Code

=head2 tdsdescription

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Description of TDS

=head2 tdssection

  data_type: 'varchar'
  is_nullable: 0
  size: 20

TDS Section as per Income Tax

=head2 tdspercentage

  data_type: 'real'
  is_nullable: 0

Default TDS Percentage

=head2 scpercentage

  data_type: 'real'
  is_nullable: 0

Surcharge Percentage.

=head2 cesspercentage

  data_type: 'real'
  is_nullable: 0

Cess Percentage.

=head2 secpercentage

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SHEC Percentage.

=head2 acpercentage

  data_type: 'real'
  is_nullable: 0

Additional Cess Percentage.

=head2 used

  data_type: 'bit'
  is_nullable: 0

TRUE TDS Code has Used

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
  "tdscode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "tdsdescription",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "tdssection",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "tdspercentage",
  { data_type => "real", is_nullable => 0 },
  "scpercentage",
  { data_type => "real", is_nullable => 0 },
  "cesspercentage",
  { data_type => "real", is_nullable => 0 },
  "secpercentage",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "acpercentage",
  { data_type => "real", is_nullable => 0 },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</tdscode>

=back

=cut

__PACKAGE__->set_primary_key("tdscode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ps088sKKkb0n1Vom3HImlA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
