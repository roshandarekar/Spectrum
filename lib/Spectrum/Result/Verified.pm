use utf8;
package Spectrum::Result::Verified;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::Verified

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Verified>

=cut

__PACKAGE__->table("Verified");

=head1 ACCESSORS

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 contactperson

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 address1

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 address2

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 address3

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pin

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 place

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 telno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 faxno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 mobileno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 emailid

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 areacode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 statecode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 regioncode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 bankname

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 bankrtgscode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 bankbranch

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 panno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 correctvat

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 centralsalestaxno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 authorisationno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 taxidentificationno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 servicetaxno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 druglicenseno1

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 druglicenseno2

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 poisioncodeno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 poisioncodeno2

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 excieregno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 exciseregaddress1

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 exciseregaddress2

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 exciseregaddress3

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 exciseregcity

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 exciseregpin

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 exciseregstate

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 exciserange

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 excisedivision

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 excisecommissionerate

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 excisecontrolcodeno

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 tdscode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 tdspercentage

  data_type: 'double precision'
  is_nullable: 1
  original: {data_type => "double"}

=head2 scpercentage

  data_type: 'double precision'
  is_nullable: 1
  original: {data_type => "double"}

=head2 lowertdsrate

  data_type: 'bit'
  is_nullable: 0

=head2 limitedcompany

  data_type: 'bit'
  is_nullable: 0

=head2 tdscompanytype

  data_type: 'double precision'
  is_nullable: 1
  original: {data_type => "double"}

=head2 againstform15g

  data_type: 'bit'
  is_nullable: 0

=head2 againsthundi

  data_type: 'bit'
  is_nullable: 0

=head2 openinginterestbalance

  data_type: 'double precision'
  is_nullable: 1
  original: {data_type => "double"}

=head2 intpercentage

  data_type: 'double precision'
  is_nullable: 1
  original: {data_type => "double"}

=head2 creditperiod

  data_type: 'double precision'
  is_nullable: 1
  original: {data_type => "double"}

=head2 discpercentage

  data_type: 'double precision'
  is_nullable: 1
  original: {data_type => "double"}

=head2 pricelistcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 transportername

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 standard

  data_type: 'bit'
  is_nullable: 0

=head2 locked

  data_type: 'bit'
  is_nullable: 0

=head2 used

  data_type: 'bit'
  is_nullable: 0

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 1

=head2 selected

  data_type: 'bit'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "accountcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "contactperson",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "address1",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "address2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "address3",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pin",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "place",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "telno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "faxno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "mobileno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "emailid",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "areacode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "statecode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "regioncode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "bankname",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "bankrtgscode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "bankbranch",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "panno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "correctvat",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "centralsalestaxno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "authorisationno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "taxidentificationno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "servicetaxno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "druglicenseno1",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "druglicenseno2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "poisioncodeno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "poisioncodeno2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "excieregno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "exciseregaddress1",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "exciseregaddress2",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "exciseregaddress3",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "exciseregcity",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "exciseregpin",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "exciseregstate",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "exciserange",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "excisedivision",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "excisecommissionerate",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "excisecontrolcodeno",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "tdscode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "tdspercentage",
  {
    data_type   => "double precision",
    is_nullable => 1,
    original    => { data_type => "double" },
  },
  "scpercentage",
  {
    data_type   => "double precision",
    is_nullable => 1,
    original    => { data_type => "double" },
  },
  "lowertdsrate",
  { data_type => "bit", is_nullable => 0 },
  "limitedcompany",
  { data_type => "bit", is_nullable => 0 },
  "tdscompanytype",
  {
    data_type   => "double precision",
    is_nullable => 1,
    original    => { data_type => "double" },
  },
  "againstform15g",
  { data_type => "bit", is_nullable => 0 },
  "againsthundi",
  { data_type => "bit", is_nullable => 0 },
  "openinginterestbalance",
  {
    data_type   => "double precision",
    is_nullable => 1,
    original    => { data_type => "double" },
  },
  "intpercentage",
  {
    data_type   => "double precision",
    is_nullable => 1,
    original    => { data_type => "double" },
  },
  "creditperiod",
  {
    data_type   => "double precision",
    is_nullable => 1,
    original    => { data_type => "double" },
  },
  "discpercentage",
  {
    data_type   => "double precision",
    is_nullable => 1,
    original    => { data_type => "double" },
  },
  "pricelistcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "taxcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "salesmancode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "agentcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "transportername",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "standard",
  { data_type => "bit", is_nullable => 0 },
  "locked",
  { data_type => "bit", is_nullable => 0 },
  "used",
  { data_type => "bit", is_nullable => 0 },
  "sysdate",
  { data_type => "datetime", is_nullable => 1 },
  "selected",
  { data_type => "bit", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P/uoWwdU7k0uEhpGQP3hGw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
