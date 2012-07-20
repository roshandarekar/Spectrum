use utf8;
package Spectrum::Result::StdPrinterDriver;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::StdPrinterDriver

=head1 DESCRIPTION

Printer Driver stores defination of ESC/P2 and PCL command set Required to Print in DOS Style. Only Defination Data will store in System.mdb

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<stdPrinterDriver>

=cut

__PACKAGE__->table("stdPrinterDriver");

=head1 ACCESSORS

=head2 printername

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Name of Printer Driver (Not the same as printer name)

=head2 default

  data_type: 'bit'
  is_nullable: 0

True if This record to be used as default ESC/P2 Sequence for DOS style Printing

=head2 epsoncompatible

  data_type: 'bit'
  is_nullable: 0

True if ths printer is Epson Compatible.

=head2 selectportrait

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select portrait mode of printing

=head2 selectlandscape

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select landscape mode of printing

=head2 setpagelength

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Page Length

=head2 select8lpi

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select 8 Lines per Inch

=head2 normalcpi

  data_type: 'real'
  is_nullable: 0

ESC/P2 Sequence to Select Normal character 10 CPI

=head2 compressselect

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Compress Font.17 CPI

=head2 compresscancel

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Cancel Compress Font.

=head2 compresscpi

  data_type: 'real'
  is_nullable: 0

No. of Characters per inch in compress font.

=head2 eliteselect

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Elite Font 12 CPI

=head2 elitecancel

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Cancel Elite Font.

=head2 elitecpi

  data_type: 'real'
  is_nullable: 0

No. of Character per inch in Elite font.

=head2 doublewidthselect

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select DoubleWidth Font 5 CPI

=head2 doublewidthcancel

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Cancel Double width Font.

=head2 doublewidthcpi

  data_type: 'real'
  is_nullable: 0

No. of Characters per inch in double width.

=head2 compresseliteselect

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Compress+Elite Font 20 CPI

=head2 compresselitecancel

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Cancel Compress+Elite Font

=head2 compresselitecpi

  data_type: 'real'
  is_nullable: 0

No. of Characters per inch in Compress+Elite Font.

=head2 compressdoublewidthselect

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Compress Double Width 9 CPI

=head2 compressdoublewidthcancel

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Cancel Compress Double Width Font.

=head2 compressdoublewidthcpi

  data_type: 'real'
  is_nullable: 0

No. of Characters in Compress Double Width Font.

=head2 elitedoublewidthselect

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Elite Double Width Font 6 CPI

=head2 elitedoublewidthcancel

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Cancel Elite Double Width Font

=head2 elitedoublewidthcpi

  data_type: 'real'
  is_nullable: 0

No. of characters per inch in Elite+Double width Font.

=head2 compresselitedoublewidthselect

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Double Width in Compess+Elite Font 10 CPI

=head2 compresselitedoublewidthcancel

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Cancel Double width in Compress+Elite

=head2 compresselitedoublewidthcpi

  data_type: 'real'
  is_nullable: 0

No. of characters per inch in Elite+Double Width Font.

=head2 brightselect

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Select Bright Font.

=head2 brightcancel

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Cancel Bright Font.

=head2 eject

  data_type: 'varchar'
  is_nullable: 0
  size: 150

ESC/P2 Sequence to Eject Page.

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if Standard Printer Driver.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

True if Driver has Locked.

=head2 used

  data_type: 'bit'
  is_nullable: 0

True if it has used.

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Date on which it has created.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

For Selection

=cut

__PACKAGE__->add_columns(
  "printername",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "default",
  { data_type => "bit", is_nullable => 0 },
  "epsoncompatible",
  { data_type => "bit", is_nullable => 0 },
  "selectportrait",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "selectlandscape",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "setpagelength",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "select8lpi",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "normalcpi",
  { data_type => "real", is_nullable => 0 },
  "compressselect",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "compresscancel",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "compresscpi",
  { data_type => "real", is_nullable => 0 },
  "eliteselect",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "elitecancel",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "elitecpi",
  { data_type => "real", is_nullable => 0 },
  "doublewidthselect",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "doublewidthcancel",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "doublewidthcpi",
  { data_type => "real", is_nullable => 0 },
  "compresseliteselect",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "compresselitecancel",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "compresselitecpi",
  { data_type => "real", is_nullable => 0 },
  "compressdoublewidthselect",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "compressdoublewidthcancel",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "compressdoublewidthcpi",
  { data_type => "real", is_nullable => 0 },
  "elitedoublewidthselect",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "elitedoublewidthcancel",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "elitedoublewidthcpi",
  { data_type => "real", is_nullable => 0 },
  "compresselitedoublewidthselect",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "compresselitedoublewidthcancel",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "compresselitedoublewidthcpi",
  { data_type => "real", is_nullable => 0 },
  "brightselect",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "brightcancel",
  { data_type => "varchar", is_nullable => 0, size => 150 },
  "eject",
  { data_type => "varchar", is_nullable => 0, size => 150 },
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

=item * L</printername>

=back

=cut

__PACKAGE__->set_primary_key("printername");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nym/SKgtNn4IzrMJg7CnOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
