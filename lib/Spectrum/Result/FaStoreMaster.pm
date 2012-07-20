use utf8;
package Spectrum::Result::FaStoreMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaStoreMaster - Store Master

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaStoreMaster>

=cut

__PACKAGE__->table("FaStoreMaster");

=head1 ACCESSORS

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code of Master

=head2 storename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Store Name

=head2 contactperson

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Contact Person at Store

=head2 address1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 1 of Store

=head2 address2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 2 of Store

=head2 address3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 3 of Store

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 30

City of Store

=head2 pin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Pin of Store

=head2 state

  data_type: 'varchar'
  is_nullable: 0
  size: 30

State of Store

=head2 telno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Telephone No. of store

=head2 faxno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Fax No. of Store

=head2 mobileno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Mobile No. of Store

=head2 emailid

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Email ID of Store

=head2 salestaxheading

  data_type: 'varchar'
  is_nullable: 0
  size: 10

SalesTax Heading of Store (e.g. BST/GST/KST)

=head2 localsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Local Salestax (VAT) Registration No. of Store

=head2 localsalestaxauthorisationno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Local Salestax Authorisation No. of Store

=head2 centralsalestaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Central Sales Tax No. of Store

=head2 taxidentificationno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Tax Identification No. of Store

=head2 servicetaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Service Tax No. of Store

=head2 workcontracttaxno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Work Contract Tax No. of Store

=head2 druglicenseno1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Drug License No. 1 of Store

=head2 druglicenseno2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Drug License No. 2 of Store

=head2 exciserange

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Excise Range of Store

=head2 excisedivision

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Division of Store

=head2 excisecommissionerate

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Commissionerate of Store

=head2 exciseregno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Registration No. of Store

=head2 excisecontrolcodeno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Excise Control Code (ECC) of store

=head2 documentheading1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 1 of Document

=head2 documentheading2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 2 of Document

=head2 documentheading3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 3 of Document

=head2 documentheading4

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 4 of Document

=head2 documentheading5

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Heading Line 5 of Document

=head2 additionaldetail1

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 1 to print on document

=head2 additionaldetail2

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 2 to print on document

=head2 additionaldetail3

  data_type: 'varchar'
  is_nullable: 0
  size: 80

Additional Detail Line 3 to print on document

=head2 signatory

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Signatory of Store person

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
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "storename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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
  "additionaldetail1",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "additionaldetail2",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "additionaldetail3",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "signatory",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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

=item * L</storecode>

=back

=cut

__PACKAGE__->set_primary_key("storecode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IoIRCDTY9ISdnRCp1SJpww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
