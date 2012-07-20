use utf8;
package Spectrum::Result::PaEmployeeMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::PaEmployeeMaster - Employee Master.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<PaEmployeeMaster>

=cut

__PACKAGE__->table("PaEmployeeMaster");

=head1 ACCESSORS

=head2 employeecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Employee Code.

=head2 employeename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of the Employee.

=head2 fathername

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Father / Husband Name of Employee.

=head2 designation

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Designation of Employee.

=head2 sex

  data_type: 'varchar'
  is_nullable: 0
  size: 1

M - Male or F - Femele.

=head2 birthdate

  data_type: 'datetime'
  is_nullable: 0

Birth Date of Employee

=head2 married

  data_type: 'bit'
  is_nullable: 0

True if Employee is Married

=head2 bloodgroup

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Blood Group of Employee

=head2 disease

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Dieseas if any

=head2 address1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 1 of Employee.

=head2 address2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 2 of Employee.

=head2 address3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 3 of Employee.

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 30

City of Employee.

=head2 pin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Pin code of Employee.

=head2 telno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Tel. No. of Employee.

=head2 mobileno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Mobile No. of Employee.

=head2 emailid

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Email ID of Employee.

=head2 permenentaddress1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Line 1 of Employee Permenent Address

=head2 permenentaddress2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Line 2 of Employee Permenent Address.

=head2 permenentaddress3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Line 3 of Employee Permenent Address.

=head2 permenentcity

  data_type: 'varchar'
  is_nullable: 0
  size: 30

City of Employee Permenent Address.

=head2 permenentpin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Pin code of Employee Permenent Address.

=head2 permenenttelno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Tel. No. of Employee Permenent Address.

=head2 educationqualicication

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Education Qualification.

=head2 additionalqualification

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Additional Qualification.

=head2 previouscompanyname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of Previous Company in which he worked.

=head2 previousdesignation

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Designation at Previous Company.

=head2 workexperience

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Work Experience.

=head2 referenceby

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Reference of any company / Person.

=head2 permenentemployee

  data_type: 'bit'
  is_nullable: 0

TRUE if Employee is Permenent.

=head2 joineddate

  data_type: 'datetime'
  is_nullable: 0

Date on Wich Employee Joined to Company.

=head2 confirmationdate

  data_type: 'datetime'
  is_nullable: 0

Date on Which Employee Confirmed to Join.

=head2 lastincrementdate

  data_type: 'datetime'
  is_nullable: 0

Date on Which Last Increment has given.

=head2 leftdate

  data_type: 'datetime'
  is_nullable: 0

Date on Which Employee Left Company.

=head2 shiftcode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Shift in which he works.

=head2 departmentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Depertment in Which he Works.

=head2 categorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Category Code of Employee.

=head2 statuscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Status Code of Employee.

=head2 daapplicable

  data_type: 'bit'
  is_nullable: 0

TRUE if D.A. Applicable

=head2 pftype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

N - Not Applicable, P - PF, F - FPF

=head2 pfno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Provident Fund No.

=head2 esicapplicable

  data_type: 'bit'
  is_nullable: 0

TRUE if ESIC is Applicable.

=head2 esicno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

ESIC No.

=head2 professiontaxapplicable

  data_type: 'bit'
  is_nullable: 0

TRUE if Profession Tax is Applicable.

=head2 incometaxapplicable

  data_type: 'bit'
  is_nullable: 0

TRUE if Income Tax is Applicable.

=head2 panno

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Permenent Account No. (Income Tax)

=head2 mlwfapplicable

  data_type: 'bit'
  is_nullable: 0

TRUE if MLWF is Applicable.

=head2 paymentmode

  data_type: 'varchar'
  is_nullable: 0
  size: 1

C - Cash, B - Bank (Cheque)

=head2 standard

  data_type: 'bit'
  is_nullable: 0

TRUE if it is Default Standard Code.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

TRUE if Code  is Locked.

=head2 used

  data_type: 'bit'
  is_nullable: 0

TRUE if Code is used in Entry.

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date of Which Code has Created

=head2 selected

  data_type: 'bit'
  is_nullable: 0

Variable for Selection Only.

=cut

__PACKAGE__->add_columns(
  "employeecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "employeename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "fathername",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "designation",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "sex",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "birthdate",
  { data_type => "datetime", is_nullable => 0 },
  "married",
  { data_type => "bit", is_nullable => 0 },
  "bloodgroup",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "disease",
  { data_type => "varchar", is_nullable => 0, size => 40 },
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
  "telno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "mobileno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "emailid",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "permenentaddress1",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "permenentaddress2",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "permenentaddress3",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "permenentcity",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "permenentpin",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "permenenttelno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "educationqualicication",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "additionalqualification",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "previouscompanyname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "previousdesignation",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "workexperience",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "referenceby",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "permenentemployee",
  { data_type => "bit", is_nullable => 0 },
  "joineddate",
  { data_type => "datetime", is_nullable => 0 },
  "confirmationdate",
  { data_type => "datetime", is_nullable => 0 },
  "lastincrementdate",
  { data_type => "datetime", is_nullable => 0 },
  "leftdate",
  { data_type => "datetime", is_nullable => 0 },
  "shiftcode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "departmentcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "categorycode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "statuscode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "daapplicable",
  { data_type => "bit", is_nullable => 0 },
  "pftype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "pfno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "esicapplicable",
  { data_type => "bit", is_nullable => 0 },
  "esicno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "professiontaxapplicable",
  { data_type => "bit", is_nullable => 0 },
  "incometaxapplicable",
  { data_type => "bit", is_nullable => 0 },
  "panno",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "mlwfapplicable",
  { data_type => "bit", is_nullable => 0 },
  "paymentmode",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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

=item * L</employeecode>

=back

=cut

__PACKAGE__->set_primary_key("employeecode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/7zuDRl+C75M/4I1CORqMA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
