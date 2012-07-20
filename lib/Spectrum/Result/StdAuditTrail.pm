use utf8;
package Spectrum::Result::StdAuditTrail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdAuditTrail

=head1 DESCRIPTION

Audit Trail Stores details of users works for entry and Masters.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdAuditTrail>

=cut

__PACKAGE__->table("stdAuditTrail");

=head1 ACCESSORS

=head2 userid

  data_type: 'varchar'
  is_nullable: 0
  size: 20

User ID of which Audit Trail has stored

=head2 optionnumber

  data_type: 'varchar'
  is_nullable: 0
  size: 10

Option No. used by user

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

System Date on which option has used

=head2 systime

  data_type: 'datetime'
  is_nullable: 0

System Time on which option has used

=head2 mastername

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Master Name which user has perform Add/Edit/Delete

=head2 mastercode

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Master Code which has has Added/Edited/Deleted

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Document Year of Document Added/Edit/Deleted

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code of Document Added/Edit/Deleted

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document type of Document Added/Edit/Deleted

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code of Document Added/Edit/Deleted

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No. of Document Added/Edit/Deleted

=head2 originalvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Original Value of Document Added/Edit/Deleted

=head2 newvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

New Value of Document Added/Edit/Deleted

=head2 entrymode

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Entry mode Add / Edited / Deleted

=head2 computername

  data_type: 'varchar'
  is_nullable: 0
  size: 75

Name of computer from which operation has performed

=cut

__PACKAGE__->add_columns(
  "userid",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "optionnumber",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "sysdate",
  { data_type => "datetime", is_nullable => 0 },
  "systime",
  { data_type => "datetime", is_nullable => 0 },
  "mastername",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "mastercode",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "documentyear",
  { data_type => "smallint", is_nullable => 0 },
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "seriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "documentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "originalvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "newvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "entrymode",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "computername",
  { data_type => "varchar", is_nullable => 0, size => 75 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:y41jYiYbkCgWov9hNR3aGw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
