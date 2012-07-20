use utf8;
package Spectrum::Result::Company;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::Company - Company Master Store Company Details.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Company>

=cut

__PACKAGE__->table("Company");

=head1 ACCESSORS

=head2 companycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Company Code Not Required Now.

=head2 companyname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Name of Company.

=head2 address1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 1 of Company.

=head2 address2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 2 of Company.

=head2 address3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 3 of Company.

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 30

City of Company.

=head2 pin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

PinCode of Company.

=head2 state

  data_type: 'varchar'
  is_nullable: 0
  size: 30

State of Company.

=head2 statecode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

StateCode of Company.

=head2 telno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Telephone No. of Company.

=head2 emailid

  data_type: 'varchar'
  is_nullable: 0
  size: 60

EmailID of Company.

=head2 startdate

  data_type: 'datetime'
  is_nullable: 0

Start Date of Accounting Period.

=head2 lastdate

  data_type: 'datetime'
  is_nullable: 0

Last Date of Accounting Period.

=head2 startentrydate

  data_type: 'datetime'
  is_nullable: 0

Date from Data Entry will Start.

=head2 faversion

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Version No. of Database of Spectrum.

=head2 exversion

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Version No. of Database of Modvat.

=head2 paversion

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Version No. of Database of Muster.

=head2 geversion

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Version No. of Database of Customised Software.

=head2 salestaxheading

  data_type: 'varchar'
  is_nullable: 0
  size: 10

SalesTax Heading of State. (e.g. B.S.T/G.S.T.)

=head2 localsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Local SalesTax/TIN No.

=head2 localsalestaxauthorisationno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Local SalesTax Authorisation No.

=head2 centralsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Central SalesTax/TIN No.

=head2 taxidentificationno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Tax Identification No. (Now Not Required.)

=head2 servicetaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Service Tax No.

=head2 workcontracttaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Work Contract Tax No.

=head2 druglicenseno1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Drug License No. 1.

=head2 druglicenseno2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Drug License No. 2.

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

=head2 ieccode

  data_type: 'varchar'
  is_nullable: 0
  size: 20

IEC Code.

=head2 panno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Permenent Account No.

=head2 tanno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

TDS Account No.

=head2 tdscircle

  data_type: 'varchar'
  is_nullable: 0
  size: 30

TDS Circle

=head2 exciserangecode1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Range Code1

=head2 exciserangecode2

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Range Code2

=head2 exciserange

  data_type: 'varchar'
  is_nullable: 0
  size: 130

Excise Range

=head2 excisedivisioncode1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Division Code1

=head2 excisedivisioncode2

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Division Code2

=head2 excisedivision

  data_type: 'varchar'
  is_nullable: 0
  size: 130

Excise Division

=head2 excisecommissioneratecode1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Commissionerate Code1

=head2 excisecommissioneratecode2

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Commissionerate Code2

=head2 excisecommissionerate

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Commissionerate

=head2 exciseregno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Registration No.

=head2 excisecontrolcodeno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Control Code No.

=head2 exciseplano

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise PLA No.

=head2 excisemfgcodeno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Manufacturer Code No.

=head2 excisemfgtypeno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Manufacturer Type No.

=head2 exciseregaddress1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise Registration Address Line 1.

=head2 exciseregaddress2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise Registration Address Line 2.

=head2 exciseregaddress3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Registration Address Line 3.

=head2 exciseregcity

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Excise Registration City.

=head2 exciseregpin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Excise Registration PinCode.

=head2 exciseregstate

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Excise Registration State.

=head2 excisestatecode

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Excise Registration State Code.

=head2 dutyunitroundto

  data_type: 'smallint'
  is_nullable: 0

Decimal Point to Round Excise Duty Per Unit.

=head2 additionalcessapplied

  data_type: 'bit'
  is_nullable: 0

Yes if Goverment has imposed Additional Cess on Excise applied to RG23D Register.

=head2 additionalcessname

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Name of Additional Cess Applied by Goverment.

=head2 rg23dyear

  data_type: 'smallint'
  is_nullable: 0

Current Working Year of RG23D Register

=head2 documentheading1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Document Heading Line 1 to Print on Documents.

=head2 documentheading2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Document Heading Line 2 to Print on Documents.

=head2 documentheading3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Document Heading Line 3 to Print on Documents.

=head2 documentheading4

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Document Heading Line 4 to Print on Documents.

=head2 documentheading5

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Document Heading Line 5 to Print on Documents.

=head2 voucherheading1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Voucher Heading Line 1 to Print on Voucher.

=head2 voucherheading2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Voucher Heading Line 2 to Print on Voucher.

=head2 voucherheading3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Voucher Heading Line 3 to Print on Voucher.

=head2 additionaldetail1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 1 may Required to Print on Documents.

=head2 additionaldetail2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 2 may Required to Print on Documents.

=head2 additionaldetail3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 3 may Required to Print on Documents.

=head2 additionaldetail4

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 4 may Required to Print on Documents.

=head2 additionaldetail5

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 5 may Required to Print on Documents.

=head2 documentprefix

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Document Prefix

=head2 bankname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Bank Name of Company.

=head2 bankbranch

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Bank Branch of Company.

=head2 bankaccountno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Bank Account No.

=head2 bankrtgscode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Bank RTGS No.

=head2 signatory

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Authorised Signatory of Company.

=head2 branchrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Require to maintain Branchwise Accounting.

=head2 branchwisecalculationsetup

  data_type: 'bit'
  is_nullable: 0

Yes if Company is having Branchwise Calculation Setup.

=head2 seriesrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Requie Series for Document Number.

=head2 outstandingrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Required to Maintain Billwise Outstanding.

=head2 inventoryrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Required to Maintain Inventory.

=head2 orderrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Required to Maintain Sales & Purchase Order Track.

=head2 storerequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Required to maintain Store/Godown wise Inventory.

=head2 salestaxrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Required to maintain Salestax Detail.

=head2 displaycurrentbalance

  data_type: 'bit'
  is_nullable: 0

Yes if Company wants to Display Current Balance while entry.

=head2 checkdailystock

  data_type: 'bit'
  is_nullable: 0

Yes if Application should Check Stock Balance as on Given Entry Date.

=head2 currencyrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Required to maintain MultiCurrency.

=head2 currencyunit

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Currency Unit Name of Local Currency. (e.g.Ruppes)

=head2 currencyunitsign

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Currency Unit Sign of Local Currency. (Rs.)

=head2 currencydecimal

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Currency Decimal Name of Local Currency (e.g. Paise)

=head2 currencydecimalsign

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Currency Decimal Sign of Local Currency. (P.)

=head2 useinvoicerefno

  data_type: 'bit'
  is_nullable: 0

Yes if company wants to Use Invoice Ref. No. in Narration of Cash/Bank Entry.

=head2 batchwisesalesrate

  data_type: 'bit'
  is_nullable: 0

Yes if Company wants to pickup Batchwise Sales Rate in Invoice.

=head2 allocatebatchautomatically

  data_type: 'bit'
  is_nullable: 0

Yes if Company wants to Pickup BatchNo Automatically while Issue.

=head2 allownegativestock

  data_type: 'bit'
  is_nullable: 0

Yes if Company wants to Issue Goods even stock is not in hand.

=head2 allowblankcostcentre

  data_type: 'bit'
  is_nullable: 0

Yes if User can go ahed without enter cost centre.

=head2 notifyduplicateitem

  data_type: 'bit'
  is_nullable: 0

Yes if Duplicate Item message to be display.

=head2 allowduplicateitem

  data_type: 'bit'
  is_nullable: 0

Yes if Duplicate Item is allow in entry.

=head2 pickupfiforate

  data_type: 'bit'
  is_nullable: 0

Yes if while issue pickup Cost Rate on FIFO Basis.

=head2 cashpaymentlimit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Maximum Cash Payment Amount of an entry.

=head2 lockcashpaymentlimit

  data_type: 'bit'
  is_nullable: 0

TRUE if Entry to be lock if cash payment entry amount is above limit.

=head2 lastbackupdate

  data_type: 'datetime'
  is_nullable: 0

Date of LastBackup Taken.

=head2 lastcompactdate

  data_type: 'datetime'
  is_nullable: 0

Date of LastCompact Database.

=cut

__PACKAGE__->add_columns(
  "companycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "companyname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
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
  "statecode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "telno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "emailid",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "startdate",
  { data_type => "datetime", is_nullable => 0 },
  "lastdate",
  { data_type => "datetime", is_nullable => 0 },
  "startentrydate",
  { data_type => "datetime", is_nullable => 0 },
  "faversion",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "exversion",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "paversion",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "geversion",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "salestaxheading",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "localsalestaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "localsalestaxauthorisationno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "centralsalestaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "taxidentificationno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "servicetaxno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "workcontracttaxno",
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
  { data_type => "varchar", is_nullable => 0, size => 130 },
  "excisedivisioncode1",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "excisedivisioncode2",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "excisedivision",
  { data_type => "varchar", is_nullable => 0, size => 130 },
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
  "dutyunitroundto",
  { data_type => "smallint", is_nullable => 0 },
  "additionalcessapplied",
  { data_type => "bit", is_nullable => 0 },
  "additionalcessname",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "rg23dyear",
  { data_type => "smallint", is_nullable => 0 },
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
  "additionaldetail4",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "additionaldetail5",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "documentprefix",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "bankname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "bankbranch",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "bankaccountno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "bankrtgscode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "signatory",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "branchrequired",
  { data_type => "bit", is_nullable => 0 },
  "branchwisecalculationsetup",
  { data_type => "bit", is_nullable => 0 },
  "seriesrequired",
  { data_type => "bit", is_nullable => 0 },
  "outstandingrequired",
  { data_type => "bit", is_nullable => 0 },
  "inventoryrequired",
  { data_type => "bit", is_nullable => 0 },
  "orderrequired",
  { data_type => "bit", is_nullable => 0 },
  "storerequired",
  { data_type => "bit", is_nullable => 0 },
  "salestaxrequired",
  { data_type => "bit", is_nullable => 0 },
  "displaycurrentbalance",
  { data_type => "bit", is_nullable => 0 },
  "checkdailystock",
  { data_type => "bit", is_nullable => 0 },
  "currencyrequired",
  { data_type => "bit", is_nullable => 0 },
  "currencyunit",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "currencyunitsign",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "currencydecimal",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "currencydecimalsign",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "useinvoicerefno",
  { data_type => "bit", is_nullable => 0 },
  "batchwisesalesrate",
  { data_type => "bit", is_nullable => 0 },
  "allocatebatchautomatically",
  { data_type => "bit", is_nullable => 0 },
  "allownegativestock",
  { data_type => "bit", is_nullable => 0 },
  "allowblankcostcentre",
  { data_type => "bit", is_nullable => 0 },
  "notifyduplicateitem",
  { data_type => "bit", is_nullable => 0 },
  "allowduplicateitem",
  { data_type => "bit", is_nullable => 0 },
  "pickupfiforate",
  { data_type => "bit", is_nullable => 0 },
  "cashpaymentlimit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "lockcashpaymentlimit",
  { data_type => "bit", is_nullable => 0 },
  "lastbackupdate",
  { data_type => "datetime", is_nullable => 0 },
  "lastcompactdate",
  { data_type => "datetime", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Wdf5ewf/iUGjn6ELhHQY0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
