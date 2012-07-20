use utf8;
package Spectrum::Result::StdCustomisedReport;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdCustomisedReport

=head1 DESCRIPTION

Customised Reports store Report Defination of Customised Reports.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdCustomisedReports>

=cut

__PACKAGE__->table("stdCustomisedReports");

=head1 ACCESSORS

=head2 reportname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Customised Report Name

=head2 customisedname

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Nothing will Store Only to compatible with stdReports for Exporting/Importing Masters.

=head2 reportdescription

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Description of Report

=head2 commandtype

  data_type: 'smallint'
  is_nullable: 0

Type of Command Text or Stored Procedure

=head2 commandtext

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

SQL String to Get Recordset

=head2 reporttype

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Type of Report to Call R - Report & L - Label

=head2 getdate

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getdocumenttype

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getdocumentclass

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getdocuments

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getbranch

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getaccountgroup

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getaccount

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getaccountclass

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 gettax

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getcostcategory

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getcostcentre

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getsalesman

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getsalesmanager

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getagent

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getcurrency

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getseries

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getarea

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getstate

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getregion

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 gettds

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getcategory

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getproductgroup

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getitemclass

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getitem

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getcolor

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getsize

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getbatchserial

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getstore

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getpricelist

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getdepartment

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getmachine

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getprocess

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getshift

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 getemployee

  data_type: 'smallint'
  is_nullable: 0

0 - None, 1 - For Single, 2 - Range, 3 - Selection

=head2 used

  data_type: 'bit'
  is_nullable: 0

Report has Used

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

For Selection.

=cut

__PACKAGE__->add_columns(
  "reportname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "customisedname",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "reportdescription",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "commandtype",
  { data_type => "smallint", is_nullable => 0 },
  "commandtext",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "reporttype",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "getdate",
  { data_type => "smallint", is_nullable => 0 },
  "getdocumenttype",
  { data_type => "smallint", is_nullable => 0 },
  "getdocumentclass",
  { data_type => "smallint", is_nullable => 0 },
  "getdocuments",
  { data_type => "smallint", is_nullable => 0 },
  "getbranch",
  { data_type => "smallint", is_nullable => 0 },
  "getaccountgroup",
  { data_type => "smallint", is_nullable => 0 },
  "getaccount",
  { data_type => "smallint", is_nullable => 0 },
  "getaccountclass",
  { data_type => "smallint", is_nullable => 0 },
  "gettax",
  { data_type => "smallint", is_nullable => 0 },
  "getcostcategory",
  { data_type => "smallint", is_nullable => 0 },
  "getcostcentre",
  { data_type => "smallint", is_nullable => 0 },
  "getsalesman",
  { data_type => "smallint", is_nullable => 0 },
  "getsalesmanager",
  { data_type => "smallint", is_nullable => 0 },
  "getagent",
  { data_type => "smallint", is_nullable => 0 },
  "getcurrency",
  { data_type => "smallint", is_nullable => 0 },
  "getseries",
  { data_type => "smallint", is_nullable => 0 },
  "getarea",
  { data_type => "smallint", is_nullable => 0 },
  "getstate",
  { data_type => "smallint", is_nullable => 0 },
  "getregion",
  { data_type => "smallint", is_nullable => 0 },
  "gettds",
  { data_type => "smallint", is_nullable => 0 },
  "getcategory",
  { data_type => "smallint", is_nullable => 0 },
  "getproductgroup",
  { data_type => "smallint", is_nullable => 0 },
  "getitemclass",
  { data_type => "smallint", is_nullable => 0 },
  "getitem",
  { data_type => "smallint", is_nullable => 0 },
  "getcolor",
  { data_type => "smallint", is_nullable => 0 },
  "getsize",
  { data_type => "smallint", is_nullable => 0 },
  "getbatchserial",
  { data_type => "smallint", is_nullable => 0 },
  "getstore",
  { data_type => "smallint", is_nullable => 0 },
  "getpricelist",
  { data_type => "smallint", is_nullable => 0 },
  "getdepartment",
  { data_type => "smallint", is_nullable => 0 },
  "getmachine",
  { data_type => "smallint", is_nullable => 0 },
  "getprocess",
  { data_type => "smallint", is_nullable => 0 },
  "getshift",
  { data_type => "smallint", is_nullable => 0 },
  "getemployee",
  { data_type => "smallint", is_nullable => 0 },
  "used",
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

=item * L</reportname>

=back

=cut

__PACKAGE__->set_primary_key("reportname");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WvZcthfse0j/mzhWAzyX3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
