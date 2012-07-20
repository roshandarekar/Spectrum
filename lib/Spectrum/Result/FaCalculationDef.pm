use utf8;
package Spectrum::Result::FaCalculationDef;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaCalculationDef

=head1 DESCRIPTION

Calculation Defination Store Defination of Invoice/ Purchase Bill /Sale Note Calculation Requirement

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaCalculationDef>

=cut

__PACKAGE__->table("FaCalculationDef");

=head1 ACCESSORS

=head2 setupdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type "INV - Invoice/Cashmemo/DN/CN/QOT/SAO" & "PUR - Bill/Cash Purchase/DN/CN/PQT/PUO"

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch for which Calculation has Defined. (Blank for All.)

=head2 itemwisesalestax

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Item wise Salestax in one bill.

=head2 itemwiseaccountingposting

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Item Wise Account Posting.

=head2 itemwisegrossposting

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Item wise Gross Amount Posting.

=head2 grossposting

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Gross Account Posting.

=head2 grossaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Sales/Purchase Account Code if Gross Account Posting is Yes.

=head2 allowtochangegrossaccountcode

  data_type: 'bit'
  is_nullable: 0

Yes if User are allow to change Gross Posting Account Code.

=head2 referencenoentry

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Ref. No. Entry.

=head2 againstginclnorder

  data_type: 'bit'
  is_nullable: 0

Yes if company required to pickup details from Gin/Cln/Sao/Puo/Qot

=head2 partynameincashmemo

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Party Name in Cash Memo/Purchase.

=head2 salestaxnoincashmemo

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Party Salestax No. in Cash Memo/Purchase.

=head2 salesmanrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Salesman Entry.

=head2 agentrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Agent in Entry.

=head2 costcentrerequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Cost Centre Entry.

=head2 creditperiodrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Credit Period Entry.

=head2 narrationrequied

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Narration Entry.

=head2 ordernorequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Required Order No. & Date in DO / Challan / Invoice Entry.

=head2 transporterrequired

  data_type: 'bit'
  is_nullable: 0

Yes in Company Required Transporter Name in Invoice / Bill Entry.

=head2 lrnorequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company Required L.R. No. & Date in Invoice & Bill Entry

=head2 itemheadingrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Item Heading in Entry.

=head2 remarkrequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Remark Entry.

=head2 notifyzeroquantity

  data_type: 'bit'
  is_nullable: 0

Yes if User required to Notify for Zero Quantity in Invoice /Bill / DN /CN

=head2 notifyzerorate

  data_type: 'bit'
  is_nullable: 0

Yes if User required to Notify for Zero Rate in Invoice /Bill / DN /CN

=head2 notifyzeroamount

  data_type: 'bit'
  is_nullable: 0

Yes if User Required to Notify for Zero Amount in Invoice  / Bill / DN / CN

=head2 notifynegativestock

  data_type: 'bit'
  is_nullable: 0

Yes if User required to Notify for Negative Stock.

=head2 addresschangerequired

  data_type: 'bit'
  is_nullable: 0

Yes if Company required to Change Party Address for Sales Invoice.

=head2 additionalitemdescription

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Additional Item Description.

=head2 allowtochangerate

  data_type: 'bit'
  is_nullable: 0

Yes if User allow to change range in Entry.

=head2 allowtochangeamount

  data_type: 'bit'
  is_nullable: 0

Yes if user allow to change Product Amount in Entry.

=head2 productamountroundingto

  data_type: 'smallint'
  is_nullable: 0

Decimal Point between 0 to 2.

=head2 discountdetail

  data_type: 'bit'
  is_nullable: 0

Yes if Comapny required Discount Detail in Entry.

=head2 itemwisediscount

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Item Wise Discount in Entry.

=head2 discountroundingto

  data_type: 'smallint'
  is_nullable: 0

If Item wise Discount is there then Decimal Point between 0 to 2.

=head2 excisedetail

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Excise Detail.

=head2 cessdetail

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Cess on Excise.

=head2 manufacturingexcise

  data_type: 'bit'
  is_nullable: 0

Yes if Company required manufacturing Excise Detail in Sales Invoice.

=head2 itemwiseexcise

  data_type: 'bit'
  is_nullable: 0

Yes if Company required Item Wise Exise in Sales Invoice in Case of Manufacturer.

=head2 assessvaluepercentage

  data_type: 'real'
  is_nullable: 0

Percentage of Assess Value on MRP Value

=head2 assessvalueroundingto

  data_type: 'smallint'
  is_nullable: 0

Decimal Point between 0 to 2

=head2 defaultexcisepercentage

  data_type: 'real'
  is_nullable: 0

Default Excise Percentage for Product Level.

=head2 exciseroundingto

  data_type: 'smallint'
  is_nullable: 0

if Item wise Excise is there then Decimal Point between 0 to 2.

=head2 barcodeentry

  data_type: 'bit'
  is_nullable: 0

Yes if User will Entry Item Code with Barcode Scanner

=head2 defaultquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Default Entry Quantity in case of BarCode Entry

=head2 automovetonewitem

  data_type: 'bit'
  is_nullable: 0

Yes if Cursor Automatically move to next Item after scanning Item Code. If Default Quantity is Not Zero

=head2 skipprintersetup

  data_type: 'bit'
  is_nullable: 0

Yes if User don't want Printer Setup Dialog Box on Every Entry

=head2 countersalessetup

  data_type: 'bit'
  is_nullable: 0

If Yes then After printing control will move to next document in Item Detail Screen.

=head2 sno

  data_type: 'smallint'
  is_nullable: 0

Serial No. of Calculation defined.

=head2 addless

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Will be A - Add, L - Less, R - Rounding.

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Discription to Print in Document.

=head2 nickname

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Short Name of Calculation.

=head2 position

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Will be BE - Before Excise, BE - Before Salestax, BE - Before Gross, AG - After Gross Amount

=head2 perclumsum

  data_type: 'varchar'
  is_nullable: 0
  size: 1

will be P - Percentage, L - Lumsum.

=head2 percentageonfield

  data_type: 'varchar'
  is_nullable: 0
  size: 20

If Cal AS "P" then Nick Name.

=head2 defaultpercentage

  data_type: 'real'
  is_nullable: 0

Default Percentage of Charges.

=head2 roundingto

  data_type: 'smallint'
  is_nullable: 0

Decimal Point between 0 to 2.

=head2 amountno

  data_type: 'smallint'
  is_nullable: 0

Amount No. in File.

=head2 costcalculation

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Calculation of Cost, Itemwise Salestax, Itemwise Account Posting Will be "A - on Amount", "Q - Quantity", "N - Not Required."

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code in which posting is required if Gross Posting & Item wise Gross Posting is false.

=head2 allowtochangeaccountcode

  data_type: 'bit'
  is_nullable: 0

Yes if User is allow to change code.

=head2 allowtochangeaccountamount

  data_type: 'bit'
  is_nullable: 0

Yes if User is allow to change amount of Account Charges.

=head2 formulabefore

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Formula to be run before curposition.

=head2 formulaafter

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Formula to be run after lost focus.

=head2 tooltiptext

  data_type: 'varchar'
  is_nullable: 0
  size: 255

Tool Tip Text for Entry

=head2 isentrydone

  data_type: 'bit'
  is_nullable: 0

Temporary Variable to Find Entry has Done for Amount entered only required while defining.

=cut

__PACKAGE__->add_columns(
  "setupdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "branchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "itemwisesalestax",
  { data_type => "bit", is_nullable => 0 },
  "itemwiseaccountingposting",
  { data_type => "bit", is_nullable => 0 },
  "itemwisegrossposting",
  { data_type => "bit", is_nullable => 0 },
  "grossposting",
  { data_type => "bit", is_nullable => 0 },
  "grossaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "allowtochangegrossaccountcode",
  { data_type => "bit", is_nullable => 0 },
  "referencenoentry",
  { data_type => "bit", is_nullable => 0 },
  "againstginclnorder",
  { data_type => "bit", is_nullable => 0 },
  "partynameincashmemo",
  { data_type => "bit", is_nullable => 0 },
  "salestaxnoincashmemo",
  { data_type => "bit", is_nullable => 0 },
  "salesmanrequired",
  { data_type => "bit", is_nullable => 0 },
  "agentrequired",
  { data_type => "bit", is_nullable => 0 },
  "costcentrerequired",
  { data_type => "bit", is_nullable => 0 },
  "creditperiodrequired",
  { data_type => "bit", is_nullable => 0 },
  "narrationrequied",
  { data_type => "bit", is_nullable => 0 },
  "ordernorequired",
  { data_type => "bit", is_nullable => 0 },
  "transporterrequired",
  { data_type => "bit", is_nullable => 0 },
  "lrnorequired",
  { data_type => "bit", is_nullable => 0 },
  "itemheadingrequired",
  { data_type => "bit", is_nullable => 0 },
  "remarkrequired",
  { data_type => "bit", is_nullable => 0 },
  "notifyzeroquantity",
  { data_type => "bit", is_nullable => 0 },
  "notifyzerorate",
  { data_type => "bit", is_nullable => 0 },
  "notifyzeroamount",
  { data_type => "bit", is_nullable => 0 },
  "notifynegativestock",
  { data_type => "bit", is_nullable => 0 },
  "addresschangerequired",
  { data_type => "bit", is_nullable => 0 },
  "additionalitemdescription",
  { data_type => "bit", is_nullable => 0 },
  "allowtochangerate",
  { data_type => "bit", is_nullable => 0 },
  "allowtochangeamount",
  { data_type => "bit", is_nullable => 0 },
  "productamountroundingto",
  { data_type => "smallint", is_nullable => 0 },
  "discountdetail",
  { data_type => "bit", is_nullable => 0 },
  "itemwisediscount",
  { data_type => "bit", is_nullable => 0 },
  "discountroundingto",
  { data_type => "smallint", is_nullable => 0 },
  "excisedetail",
  { data_type => "bit", is_nullable => 0 },
  "cessdetail",
  { data_type => "bit", is_nullable => 0 },
  "manufacturingexcise",
  { data_type => "bit", is_nullable => 0 },
  "itemwiseexcise",
  { data_type => "bit", is_nullable => 0 },
  "assessvaluepercentage",
  { data_type => "real", is_nullable => 0 },
  "assessvalueroundingto",
  { data_type => "smallint", is_nullable => 0 },
  "defaultexcisepercentage",
  { data_type => "real", is_nullable => 0 },
  "exciseroundingto",
  { data_type => "smallint", is_nullable => 0 },
  "barcodeentry",
  { data_type => "bit", is_nullable => 0 },
  "defaultquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "automovetonewitem",
  { data_type => "bit", is_nullable => 0 },
  "skipprintersetup",
  { data_type => "bit", is_nullable => 0 },
  "countersalessetup",
  { data_type => "bit", is_nullable => 0 },
  "sno",
  { data_type => "smallint", is_nullable => 0 },
  "addless",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "nickname",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "position",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "perclumsum",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "percentageonfield",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "defaultpercentage",
  { data_type => "real", is_nullable => 0 },
  "roundingto",
  { data_type => "smallint", is_nullable => 0 },
  "amountno",
  { data_type => "smallint", is_nullable => 0 },
  "costcalculation",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "allowtochangeaccountcode",
  { data_type => "bit", is_nullable => 0 },
  "allowtochangeaccountamount",
  { data_type => "bit", is_nullable => 0 },
  "formulabefore",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "formulaafter",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "tooltiptext",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "isentrydone",
  { data_type => "bit", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</setupdocumenttype>

=item * L</branchcode>

=item * L</nickname>

=back

=cut

__PACKAGE__->set_primary_key("setupdocumenttype", "branchcode", "nickname");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Oq7R4IjPeEFsuF9Axu8THw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
