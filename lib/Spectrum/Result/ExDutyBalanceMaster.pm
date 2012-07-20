use utf8;
package Spectrum::Result::ExDutyBalanceMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::ExDutyBalanceMaster

=head1 DESCRIPTION

Excise Duties Balance Master Store Excise & Other Cess Balance.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<ExDutyBalanceMaster>

=cut

__PACKAGE__->table("ExDutyBalanceMaster");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Document Year

=head2 description1

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Description of Excise Duty Type 1.

=head2 rg23aopeningbalance1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 1 in RG23A Part II.

=head2 rg23acurrentbalance1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 1 in RG23A Part II.

=head2 rg23copeningbalance1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 1 in RG23C.

=head2 rg23ccurrentbalance1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 1 in RG23C.

=head2 plaopeningbalance1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 1 in PLA

=head2 placurrentbalance1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 1 in PLA.

=head2 description2

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Description of Excise Duty Type 2.

=head2 rg23aopeningbalance2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 2 in RG23A Part II.

=head2 rg23acurrentbalance2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 2 in RG23A Part II.

=head2 rg23copeningbalance2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 2 in RG23C.

=head2 rg23ccurrentbalance2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 2 in RG23C.

=head2 plaopeningbalance2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 2 in PLA

=head2 placurrentbalance2

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 2 in PLA.

=head2 description3

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Description of Excise Duty Type 3.

=head2 rg23aopeningbalance3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 3 in RG23A Part II.

=head2 rg23acurrentbalance3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 3 in RG23A Part II.

=head2 rg23copeningbalance3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 3 in RG23C.

=head2 rg23ccurrentbalance3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 3 in RG23C.

=head2 plaopeningbalance3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 3 in PLA

=head2 placurrentbalance3

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 3 in PLA.

=head2 description4

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Description of Excise Duty Type 4.

=head2 rg23aopeningbalance4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 4 in RG23A Part II.

=head2 rg23acurrentbalance4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 4 in RG23A Part II.

=head2 rg23copeningbalance4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 4 in RG23C.

=head2 rg23ccurrentbalance4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 4 in RG23C.

=head2 plaopeningbalance4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 4 in PLA

=head2 placurrentbalance4

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 4 in PLA.

=head2 description5

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Description of Excise Duty Type 5.

=head2 rg23aopeningbalance5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 5 in RG23A Part II.

=head2 rg23acurrentbalance5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 5 in RG23A Part II.

=head2 rg23copeningbalance5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 5 in RG23C.

=head2 rg23ccurrentbalance5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 5 in RG23C.

=head2 plaopeningbalance5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 5 in PLA

=head2 placurrentbalance5

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 5 in PLA.

=head2 description6

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Description of Excise Duty Type 6.

=head2 rg23aopeningbalance6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 6 in RG23A Part II.

=head2 rg23acurrentbalance6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 6 in RG23A Part II.

=head2 rg23copeningbalance6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 6 in RG23C.

=head2 rg23ccurrentbalance6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 6 in RG23C.

=head2 plaopeningbalance6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 6 in PLA

=head2 placurrentbalance6

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 6 in PLA.

=head2 description7

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Description of Excise Duty Type 7.

=head2 rg23aopeningbalance7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 7 in RG23A Part II.

=head2 rg23acurrentbalance7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 7 in RG23A Part II.

=head2 rg23copeningbalance7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 7 in RG23C.

=head2 rg23ccurrentbalance7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 7 in RG23C.

=head2 plaopeningbalance7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Balance of Excise Duty 7 in PLA

=head2 placurrentbalance7

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Current Balance of Excise Duty 7 in PLA.

=head2 purchasenickname1

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Purchase CalculationSetUp for Excise Duty 1.

=head2 purchasenickname2

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Purchase CalculationSetUp for Excise Duty 2.

=head2 purchasenickname3

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Purchase CalculationSetUp for Excise Duty 3.

=head2 purchasenickname4

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Purchase CalculationSetUp for Excise Duty 4.

=head2 purchasenickname5

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Purchase CalculationSetUp for Excise Duty 5.

=head2 purchasenickname6

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Purchase CalculationSetUp for Excise Duty 6.

=head2 purchasenickname7

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Purchase CalculationSetUp for Excise Duty 7.

=head2 salesnickname1

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Sales CalculationSetup for ExciseDuty 1.

=head2 salesnickname2

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Sales CalculationSetup for ExciseDuty 2.

=head2 salesnickname3

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Sales CalculationSetup for ExciseDuty 3.

=head2 salesnickname4

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Sales CalculationSetup for ExciseDuty 4.

=head2 salesnickname5

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Sales CalculationSetup for ExciseDuty 5.

=head2 salesnickname6

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Sales CalculationSetup for ExciseDuty 6.

=head2 salesnickname7

  data_type: 'varchar'
  is_nullable: 0
  size: 20

NickName in Sales CalculationSetup for ExciseDuty 7.

=head2 shortdescription1

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Short Description for Reports for Excise Duty 1.

=head2 shortdescription2

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Short Description for Reports for Excise Duty 2.

=head2 shortdescription3

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Short Description for Reports for Excise Duty 3.

=head2 shortdescription4

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Short Description for Reports for Excise Duty 4.

=head2 shortdescription5

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Short Description for Reports for Excise Duty 5.

=head2 shortdescription6

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Short Description for Reports for Excise Duty 6.

=head2 shortdescription7

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Short Description for Reports for Excise Duty 7.

=head2 progressivetotal

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Progressive Total

=cut

__PACKAGE__->add_columns(
  "documentyear",
  { data_type => "smallint", is_nullable => 0 },
  "description1",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "rg23aopeningbalance1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23acurrentbalance1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23copeningbalance1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23ccurrentbalance1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plaopeningbalance1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "placurrentbalance1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "description2",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "rg23aopeningbalance2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23acurrentbalance2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23copeningbalance2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23ccurrentbalance2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plaopeningbalance2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "placurrentbalance2",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "description3",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "rg23aopeningbalance3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23acurrentbalance3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23copeningbalance3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23ccurrentbalance3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plaopeningbalance3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "placurrentbalance3",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "description4",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "rg23aopeningbalance4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23acurrentbalance4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23copeningbalance4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23ccurrentbalance4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plaopeningbalance4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "placurrentbalance4",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "description5",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "rg23aopeningbalance5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23acurrentbalance5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23copeningbalance5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23ccurrentbalance5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plaopeningbalance5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "placurrentbalance5",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "description6",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "rg23aopeningbalance6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23acurrentbalance6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23copeningbalance6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23ccurrentbalance6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plaopeningbalance6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "placurrentbalance6",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "description7",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "rg23aopeningbalance7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23acurrentbalance7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23copeningbalance7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rg23ccurrentbalance7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "plaopeningbalance7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "placurrentbalance7",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "purchasenickname1",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "purchasenickname2",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "purchasenickname3",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "purchasenickname4",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "purchasenickname5",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "purchasenickname6",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "purchasenickname7",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "salesnickname1",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "salesnickname2",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "salesnickname3",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "salesnickname4",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "salesnickname5",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "salesnickname6",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "salesnickname7",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "shortdescription1",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "shortdescription2",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "shortdescription3",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "shortdescription4",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "shortdescription5",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "shortdescription6",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "shortdescription7",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "progressivetotal",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</documentyear>

=back

=cut

__PACKAGE__->set_primary_key("documentyear");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LtqHfsC/1b3wb8HTb5fMnA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
