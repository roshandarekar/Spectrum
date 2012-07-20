use utf8;
package Spectrum::Result::FaAgentMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAgentMaster - Agent Master Stores all Detail of Agent.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAgentMaster>

=cut

__PACKAGE__->table("FaAgentMaster");

=head1 ACCESSORS

=head2 agentcode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Agent Code of Master

=head2 agentname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of the Agent

=head2 contactperson

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Contact Person of Agent

=head2 address1

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 1 of Agent

=head2 address2

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 2 of Agent

=head2 address3

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Address Line 3 of Agent

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 30

City of Agent

=head2 pin

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Pin of Agent

=head2 place

  data_type: 'varchar'
  is_nullable: 0
  size: 25

Place of Agent

=head2 areacode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 5

Area Code of Agent

=head2 telno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Telephone No. of Agent

=head2 faxno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Fax No. of Agent

=head2 mobileno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Mobile No. of Agent

=head2 emailid

  data_type: 'varchar'
  is_nullable: 0
  size: 60

Email ID of Agent.

=head2 commpercentage

  data_type: 'real'
  is_nullable: 0

Commission percentage of Agent.

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
  "agentcode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "agentname",
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
  "place",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "areacode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 5 },
  "telno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "faxno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "mobileno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "emailid",
  { data_type => "varchar", is_nullable => 0, size => 60 },
  "commpercentage",
  { data_type => "real", is_nullable => 0 },
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

=item * L</agentcode>

=back

=cut

__PACKAGE__->set_primary_key("agentcode");

=head1 RELATIONS

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nnN2bEw8eKnRQHygZjft6w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
