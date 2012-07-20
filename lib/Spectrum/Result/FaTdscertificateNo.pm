use utf8;
package Spectrum::Result::FaTdscertificateNo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaTdscertificateNo

=head1 DESCRIPTION

TDS Certificate No. Stores TDS Certificate No. Issue to Supplier or Loan party.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaTDSCertificateNo>

=cut

__PACKAGE__->table("FaTDSCertificateNo");

=head1 ACCESSORS

=head2 tdscode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

TDS Applicable Code.

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch for which TDS Certificate has Issued.

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account For which Certificate No. has Printed.

=head2 fromdate

  data_type: 'datetime'
  is_nullable: 0

Certificate From Date.

=head2 todate

  data_type: 'datetime'
  is_nullable: 0

Certificate Upto Date.

=head2 tdscertificateno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

TDS Certificate No.

=head2 tdscertificatedate

  data_type: 'datetime'
  is_nullable: 0

TDS Certificate Date.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Edit Flag.

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
  "tdscode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "fromdate",
  { data_type => "datetime", is_nullable => 0 },
  "todate",
  { data_type => "datetime", is_nullable => 0 },
  "tdscertificateno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "tdscertificatedate",
  { data_type => "datetime", is_nullable => 0 },
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

=item * L</tdscode>

=item * L</branchcode>

=item * L</accountcode>

=item * L</fromdate>

=item * L</todate>

=back

=cut

__PACKAGE__->set_primary_key("tdscode", "branchcode", "accountcode", "fromdate", "todate");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:d+Bde/WgufTNj044zRcRAw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
