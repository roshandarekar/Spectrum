use utf8;
package Spectrum::Result::FaAccountAddressMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAccountAddressMaster

=head1 DESCRIPTION

Account Address Master Store Account Master Address & Registration & Other Financial Terms.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAccountAddressMaster>

=cut

__PACKAGE__->table("FaAccountAddressMaster");

=head1 ACCESSORS

=head2 accountcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Account Code of Party / Account.

=head2 contactperson

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Contact Person of Party / Account.

=head2 address1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 1 of Party / Account

=head2 address2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 2 of Party / Account

=head2 address3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 3 of Party / Account

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 30

City of Party / Account

=head2 pin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Pin of Party / Account

=head2 place

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Place of Party / Account

=head2 telno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Telephone No. of Party / Account

=head2 faxno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Fax No. of Party / Account

=head2 mobileno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Mobile No. of Party / Account

=head2 emailid

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Email ID of Party / Account

=head2 areacode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 5

Area Code of Party / Account

=head2 statecode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 3

State Code of Party / Account

=head2 regioncode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 2

Region Code of Party / Account

=head2 bankname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Bank Name of Party / Account

=head2 bankbranch

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Bank Branch of Party / Account

=head2 bankaccountno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Bank Account No. of Party / Account

=head2 bankrtgscode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Bank RTGS Code of Party / Account

=head2 panno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

PAN No. of Party / Account

=head2 localsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Local Salestax (VAT) Registration No. of Party / Account

=head2 centralsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Central Salestax (VAT) Registration No. of Party / Account

=head2 authorisationno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Salestax (VAT) authorisation No. of Party / Account

=head2 taxidentificationno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Tax Identification No. of Party / Account

=head2 servicetaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Service Tax No. of Party / Account

=head2 druglicenseno1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Drug License No. 1 of Party / Account

=head2 druglicenseno2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Drug License No. 2 of Party / Account

=head2 poisonlicenseno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Poison License No. of Party

=head2 lbtno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Local Body Tax No. of Party

=head2 ieccode

  data_type: 'varchar'
  is_nullable: 0
  size: 20

IEC Code. of Party

=head2 exciseregaddress1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise Registration Address Line 1 of Party / Account

=head2 exciseregaddress2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise Registration Address Line 2 of Party / Account

=head2 exciseregaddress3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Registration Address Line 3 of Party / Account

=head2 exciseregcity

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Excise Registration City of Party / Account

=head2 exciseregpin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Excise Registration Piin of Party / Account

=head2 exciseregstate

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Excise Registration State of Party / Account

=head2 exciserange

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Excise Range of Party / Account

=head2 excisedivision

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Division of Party / Account

=head2 excisecommissionerate

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise commissionerate of Party / Account

=head2 exciseregno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Registration No. of Party / Account

=head2 excisecontrolcodeno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Control Code (ECC) No. of Party / Account

=head2 tdscode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

TDS Applicable Code  of Party / Account

=head2 tdspercentage

  data_type: 'real'
  is_nullable: 0

TDS Percentage Applicable for Party / Account

=head2 scpercentage

  data_type: 'real'
  is_nullable: 0

Surcharge on TDS Percentage.

=head2 lowertdsrate

  data_type: 'bit'
  is_nullable: 0

True if company deduct lower TDS rate from this party / account.

=head2 limitedcompany

  data_type: 'bit'
  is_nullable: 0

True if Party / account is limited company

=head2 tdscompanytype

  data_type: 'smallint'
  is_nullable: 0

Type of TDS Company (Contractor / Subcontractor etc.)

=head2 againstform15g

  data_type: 'bit'
  is_nullable: 0

True if Loan received from this party / account against Form15G

=head2 againsthundi

  data_type: 'bit'
  is_nullable: 0

True if loan received from this party / account against Hundi.

=head2 openinginterestbalance

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Interest Opening balance of party in Total Balance (to calculate interest only on principle amount)

=head2 intpercentage

  data_type: 'real'
  is_nullable: 0

Interest Percentage to be charge or charge by party

=head2 creditperiod

  data_type: 'smallint'
  is_nullable: 0

Credit Period is allowed to or by party

=head2 discpercentage

  data_type: 'real'
  is_nullable: 0

Discount Percentage is giving or receiving from party

=head2 pricelistcode

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Pricelist code applicable for party

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Tax code applicable for party

=head2 salesmancode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Salesmancode applicable for party

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Agentcode applicable for party

=head2 transportername

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of transporter through which party or we regularly sending goods

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True of Account is standard.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

True if Party / Account has locked.

=head2 used

  data_type: 'bit'
  is_nullable: 0

True if Party / Account has used.

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
  "accountcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "contactperson",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "address1",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "address2",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "address3",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "city",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "pin",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "place",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "telno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "faxno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "mobileno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "emailid",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "areacode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 5 },
  "statecode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 3 },
  "regioncode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 2 },
  "bankname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "bankbranch",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "bankaccountno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "bankrtgscode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "panno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "localsalestaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "centralsalestaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "authorisationno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "taxidentificationno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "servicetaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "druglicenseno1",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "druglicenseno2",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "poisonlicenseno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "lbtno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "ieccode",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "exciseregaddress1",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "exciseregaddress2",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "exciseregaddress3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "exciseregcity",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "exciseregpin",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "exciseregstate",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "exciserange",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "excisedivision",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "excisecommissionerate",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "exciseregno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "excisecontrolcodeno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "tdscode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "tdspercentage",
  { data_type => "real", is_nullable => 0 },
  "scpercentage",
  { data_type => "real", is_nullable => 0 },
  "lowertdsrate",
  { data_type => "bit", is_nullable => 0 },
  "limitedcompany",
  { data_type => "bit", is_nullable => 0 },
  "tdscompanytype",
  { data_type => "smallint", is_nullable => 0 },
  "againstform15g",
  { data_type => "bit", is_nullable => 0 },
  "againsthundi",
  { data_type => "bit", is_nullable => 0 },
  "openinginterestbalance",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "intpercentage",
  { data_type => "real", is_nullable => 0 },
  "creditperiod",
  { data_type => "smallint", is_nullable => 0 },
  "discpercentage",
  { data_type => "real", is_nullable => 0 },
  "pricelistcode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "taxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "salesmancode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "agentcode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "transportername",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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

=item * L</accountcode>

=back

=cut

__PACKAGE__->set_primary_key("accountcode");

=head1 RELATIONS

=head2 accountcode

Type: belongs_to

Related object: L<Spectrum::Result::FaAccountMaster>

=cut

__PACKAGE__->belongs_to(
  "accountcode",
  "Spectrum::Result::FaAccountMaster",
  { accountcode => "accountcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 areacode

Type: belongs_to

Related object: L<Spectrum::Result::FaAreaMaster>

=cut

__PACKAGE__->belongs_to(
  "areacode",
  "Spectrum::Result::FaAreaMaster",
  { areacode => "areacode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xKPgiWtFpIv3unNEtNaP7Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
