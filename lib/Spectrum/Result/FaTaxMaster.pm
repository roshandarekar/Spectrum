use utf8;
package Spectrum::Result::FaTaxMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaTaxMaster - Tax Master

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaTaxMaster>

=cut

__PACKAGE__->table("FaTaxMaster");

=head1 ACCESSORS

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Tax Code of Master

=head2 taxdescription

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Tax Description of Tax

=head2 taxpercentage

  data_type: 'real'
  is_nullable: 0

Tax % of Tax Master

=head2 taxcategory

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Tax Category of Master (LST/CST/WCT)

=head2 formno

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Form No. of Tax Code

=head2 eformno

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Even Form No. of Tax in case of Sold in Transit

=head2 soldintransit

  data_type: 'bit'
  is_nullable: 0

True if Tax Code is for Sold in Transit Transaction

=head2 inclusivetax

  data_type: 'bit'
  is_nullable: 0

True if Tax Code is Inclusive of Tax

=head2 turnovertax

  data_type: 'real'
  is_nullable: 0

Turnover Tax % on Tax (Now No Use)

=head2 surcharge

  data_type: 'real'
  is_nullable: 0

Surcharge % on Tax (Now no use)

=head2 setoffpercentage

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Setoff Percentage of Tax

=head2 applicableforvaluation

  data_type: 'bit'
  is_nullable: 0

True if Tax amount of this tax is applicable to calculate stock value

=head2 taxonmrp

  data_type: 'bit'
  is_nullable: 0

True when Tax to be calculated on MRP

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
  "taxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "taxdescription",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "taxpercentage",
  { data_type => "real", is_nullable => 0 },
  "taxcategory",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "formno",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "eformno",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "soldintransit",
  { data_type => "bit", is_nullable => 0 },
  "inclusivetax",
  { data_type => "bit", is_nullable => 0 },
  "turnovertax",
  { data_type => "real", is_nullable => 0 },
  "surcharge",
  { data_type => "real", is_nullable => 0 },
  "setoffpercentage",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "applicableforvaluation",
  { data_type => "bit", is_nullable => 0 },
  "taxonmrp",
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

=item * L</taxcode>

=back

=cut

__PACKAGE__->set_primary_key("taxcode");

=head1 RELATIONS

=head2 fa_tax_registers

Type: has_many

Related object: L<Spectrum::Result::FaTaxRegister>

=cut

__PACKAGE__->has_many(
  "fa_tax_registers",
  "Spectrum::Result::FaTaxRegister",
  { "foreign.taxcode" => "self.taxcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:s+q089qWFseLgSiuLzTpaw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
