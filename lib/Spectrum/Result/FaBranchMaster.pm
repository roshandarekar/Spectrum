use utf8;
package Spectrum::Result::FaBranchMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaBranchMaster - Branch Master Store Details of Branch.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaBranchMaster>

=cut

__PACKAGE__->table("FaBranchMaster");

=head1 ACCESSORS

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code of Master

=head2 branchname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Name of the Branch

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code of this branch which will be use to make posting in case of BRANCH TRANSFER.

=head2 contactperson

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Contact Person at Branch

=head2 address1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 1 of Branch

=head2 address2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 2 of Branch

=head2 address3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 3 of Branch

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 30

City of Branch

=head2 pin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Pin of Branch

=head2 state

  data_type: 'varchar'
  is_nullable: 0
  size: 30

State of Branch

=head2 telno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Telephone No. of Branch

=head2 faxno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Fax No. of Branch

=head2 mobileno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Mobile No. of Branch

=head2 emailid

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Email ID of Branch

=head2 salestaxheading

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Heading of Salestax for Branch (BST/GST/KST etc.(

=head2 localsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Salestax (VAT) No. of Branch

=head2 localsalestaxauthorisedno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Salestax Authorisation No. of Branch

=head2 centralsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Central Salestax No. of Branch

=head2 taxidentificationno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Tax Idendification No. of Branch

=head2 servicetaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Service Tax No.

=head2 druglicenseno1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Drug License No.1 of Branch

=head2 druglicenseno2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Drug License No. 2 of Branch

=head2 poisonlicenseno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Poison Licanse No.

=head2 lbtno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Local Body Tax No.

=head2 panno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

PAN No. of Branch

=head2 tanno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

TAN No. of Branch

=head2 tdscircle

  data_type: 'varchar'
  is_nullable: 0
  size: 30

TDS Circle of Branch

=head2 exciserangecode1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Range Code 1 of Branch

=head2 exciserangecode2

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Range Code 2 of Branch

=head2 exciserange

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Excise Range of Branch

=head2 excisedivisioncode1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Division Code 1 of Branch

=head2 excisedivisioncode2

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Division Code 2 of Branch

=head2 excisedivision

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Divison of Branch

=head2 excisecommissioneratecode1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Commissionerate Code 1 of Branch

=head2 excisecommissioneratecode2

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Commissionerate Code 2 of Branch

=head2 excisecommissionerate

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Commissionerate of Branch

=head2 exciseregno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Registration No. of Branch

=head2 excisecontrolcodeno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Control Code (ECC) No. of Branch

=head2 exciseplano

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise PLA No. of Branch

=head2 excisemfgcodeno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Manufacturer Code No. of Branch

=head2 excisemfgtypeno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Manufacturer Type No. of Branch

=head2 exciseregaddress1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise Registration Address Line 1 of Branch

=head2 exciseregaddress2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise Registration Address Line 2 of Branch

=head2 exciseregaddress3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Registration Address Line 3 of Branch

=head2 exciseregcity

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Excise Registration city of Branch

=head2 exciseregpin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Excise Registration pin of Branch

=head2 exciseregstate

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Excise Registration state of Branch

=head2 excisestatecode

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Registration state code of Branch

=head2 documentheading1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 1 to print on document.

=head2 documentheading2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 2 to print on document.

=head2 documentheading3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 3 to print on document.

=head2 documentheading4

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 4 to print on document.

=head2 documentheading5

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 5 to print on document.

=head2 voucherheading1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 1 to print on Voucher.

=head2 voucherheading2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 2 to print on Voucher.

=head2 voucherheading3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 3 to print on Voucher.

=head2 additionaldetail1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 1 to print on any document.

=head2 additionaldetail2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 2 to print on any document.

=head2 additionaldetail3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 3 to print on any document.

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
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "branchname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
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
  "state",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "telno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "faxno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "mobileno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "emailid",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "salestaxheading",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "localsalestaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "localsalestaxauthorisedno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "centralsalestaxno",
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
  "panno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "tanno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "tdscircle",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "exciserangecode1",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "exciserangecode2",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "exciserange",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "excisedivisioncode1",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "excisedivisioncode2",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "excisedivision",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "excisecommissioneratecode1",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "excisecommissioneratecode2",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "excisecommissionerate",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "exciseregno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "excisecontrolcodeno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "exciseplano",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "excisemfgcodeno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "excisemfgtypeno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
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
  "excisestatecode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "documentheading1",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "documentheading2",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "documentheading3",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "documentheading4",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "documentheading5",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "voucherheading1",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "voucherheading2",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "voucherheading3",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "additionaldetail1",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "additionaldetail2",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "additionaldetail3",
  { data_type => "varchar", is_nullable => 0, size => 80 },
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

=item * L</branchcode>

=back

=cut

__PACKAGE__->set_primary_key("branchcode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+ToLiwUl+6y9Dg4KCl9KMQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
