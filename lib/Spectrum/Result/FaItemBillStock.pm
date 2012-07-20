use utf8;
package Spectrum::Result::FaItemBillStock;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemBillStock

=head1 DESCRIPTION

Item Bill Stock Master store detail of Items having Bill or PharmaRG Valuation for each transaction plus opening stock.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemBillStock>

=cut

__PACKAGE__->table("FaItemBillStock");

=head1 ACCESSORS

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Start Year Financial Accounting of Document.

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code of Entry

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type of Entry

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code of Entry

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No.

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Document Date

=head2 documentclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 2

Document Class

=head2 rdocumentyear

  data_type: 'smallint'
  is_nullable: 0

If it is Issue then Inward Document No against which issue has done. If Receipt same as document.

=head2 rbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

If it is Issue then Inward Branch Code against which issue has done. If Receipt same as document.

=head2 rdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

If it is Issue then Inward Document Type against which issue has done. If Receipt same as document.

=head2 rseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

If it is Issue then Inward Series Code against which issue has done. If Receipt same as document.

=head2 rdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

If it is Issue then Inward Document No. against which issue has done. If Receipt same as document.

=head2 rdocumentdate

  data_type: 'datetime'
  is_nullable: 0

If it is Issue then Inward Document Date against which issue has done. If Receipt same as document date.

=head2 ritemsno

  data_type: 'smallint'
  is_nullable: 0

If it is Issue then Inward Item Serial No. against which issue has done. If Receipt same as document.

=head2 costcategorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Cost Category of document.

=head2 costcentrecode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Cost Centre of Document.

=head2 refno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Ref.Voucher No. in Case of Gin Supplier Challan No.

=head2 refdate

  data_type: 'datetime'
  is_nullable: 0

Ref.Voucher Date.

=head2 billno

  data_type: 'varchar'
  is_nullable: 0
  size: 30

Supper Bill No.

=head2 billdate

  data_type: 'datetime'
  is_nullable: 0

Supplier Bill Date.

=head2 refdocumentyear

  data_type: 'smallint'
  is_nullable: 0

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refbranchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refdocumenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refseriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refdocumentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 refdocumentdate

  data_type: 'datetime'
  is_nullable: 0

Stores Purchase Voucher & Invoice Detail if Document is Entered through GIN & Challan

=head2 exciseinvoiceno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Excise Gatepass No. Incase of Invoice.

=head2 partycode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Customer/Supplier Code in case of Purchase/Sale/Debit/Credit Note etc.

=head2 consigneecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account code of Consignee ag. whom gate pass has issued.

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code

=head2 itemsno

  data_type: 'smallint'
  is_nullable: 0

Item Serial No. of Entry in Product file.

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code

=head2 valuation

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Item Valuation.

=head2 batchserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Batch No. of Item

=head2 mfgdate

  data_type: 'datetime'
  is_nullable: 0

Mfg.Date of Item

=head2 expdate

  data_type: 'datetime'
  is_nullable: 0

Exp.Date of Item

=head2 packing

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Packing Detail of Item

=head2 idmark

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Identification of Item in case in Batch Detail Reguired

=head2 make

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Company Make of Item

=head2 mfgbatchno

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Manufacturer Original Batch Nos. of Item has Issued in Mfgr.Gatepass

=head2 quantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity of Item in Main Unit for Purchase/Sales etc.

=head2 quantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity of Item in Other Unit for Purchase/Sales etc.

=head2 exciseno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Excise Tariff No. of Item

=head2 excisename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise Tariff Name of Item.

=head2 assessvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Assess Value of Item

=head2 excisepercentage

  data_type: 'real'
  is_nullable: 0

Excise Percentage of Item

=head2 exciseamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Excise Duty of Item

=head2 dutyperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Excise Duty Per Unit of Item.

=head2 cesspercentage

  data_type: 'real'
  is_nullable: 0

Cess Percentage of Item

=head2 cessamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cess Value of Item

=head2 cessperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cess Per Unit of Item.

=head2 adion

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI on Value

=head2 adipercentage

  data_type: 'real'
  is_nullable: 0

ADI Percentage of Item

=head2 adiamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI Value of Item

=head2 adiperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI Per Unit of Item.

=head2 secpercentage

  data_type: 'real'
  is_nullable: 0

SHEC Percentage of Item

=head2 secamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SHEC Value of Item

=head2 secperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SHEC Per Unit of Item.

=head2 acpercentage

  data_type: 'real'
  is_nullable: 0

Additional Cess Percentage of Item.

=head2 acamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Cess Value of Item.

=head2 acperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Cess Unit of Item.

=head2 purchasefrom

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Store Purchase from I)mporter, M)anufacturer & D)ealer

=head2 dealerpurchase

  data_type: 'bit'
  is_nullable: 0

TRUE if Purchase from Dealer.

=head2 mfgrcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Manufacturer Account Code

=head2 mfgrgatepassno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Manufacturer Gate Pass No.

=head2 mfgrgatepassdate

  data_type: 'datetime'
  is_nullable: 0

Manufacturer Gate Pass Date

=head2 mfgrremovaldate

  data_type: 'datetime'
  is_nullable: 0

Manufacturer Removal Date

=head2 mfgrremovaltime

  data_type: 'datetime'
  is_nullable: 0

Manufacturer Removal Time

=head2 mfgrquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity in Manufacturer Gate Pass

=head2 mfgrassessvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Assess Value in Manufacturer Gate Pass

=head2 mfgrexcisepercentage

  data_type: 'real'
  is_nullable: 0

Excise Percentage in Manufacturer Gate Pass

=head2 mfgrexciseamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Excise Amount in Manufacturer Gate Pass

=head2 mfgrdutyperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Excise Duty Per Unit in Manufacturer Gate Pass

=head2 mfgrcesspercentage

  data_type: 'real'
  is_nullable: 0

Cess Percentage in Manufacturer Gate Pass.

=head2 mfgrcessamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cess Amount in Manufacturer Gate Pass

=head2 mfgrcessperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cess Per Unit in Manufacturer Gate Pass

=head2 mfgradion

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI on Value in Manufacturer Gate Pass

=head2 mfgradipercentage

  data_type: 'real'
  is_nullable: 0

ADI Percentage of Item in Manufacturer Gate Pass

=head2 mfgradiamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI Value of Item in Manufacturer Gate Pass

=head2 mfgradiperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI Per Unit of Item  in Manufacturer Gate Pass

=head2 mfgrsecpercentage

  data_type: 'real'
  is_nullable: 0

SHEC Percentage in Manufacturer Gate Pass.

=head2 mfgrsecamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SHEC Amount in Manufacturer Gate Pass

=head2 mfgrsecperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SHEC Per Unit in Manufacturer Gate Pass

=head2 mfgracpercentage

  data_type: 'real'
  is_nullable: 0

Additional Cess Percentage of Item in Manufacturer Gate Pass

=head2 mfgracamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Cess Value of Item in Manufacturer Gate Pass

=head2 mfgracperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Cess Per Unit of Item  in Manufacturer Gate Pass

=head2 mfgradditionaldetail1

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Additional Information of Manufacturer for this Item.

=head2 mfgradditionaldetail2

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Additional Information of Manufacturer for this Item.

=head2 mfgradditionaldetail3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Additional Information of Manufacturer for this Item.

=head2 mfgradditionaldetail4

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Additional Information of Manufacturer for this Item.

=head2 dealercode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Dealer Account Code

=head2 dealergatepassno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Dealer Gate Pass No.

=head2 dealergatepassdate

  data_type: 'datetime'
  is_nullable: 0

Dealer Gate Pass Date

=head2 dealerremovaldate

  data_type: 'datetime'
  is_nullable: 0

Dealer Removal Date

=head2 dealerremovaltime

  data_type: 'datetime'
  is_nullable: 0

Dealer Removal Time

=head2 dealerquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Quantity in Dealer Gate Pass

=head2 dealerassessvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Assess Value inDealer Gate Pass

=head2 dealerexcisepercentage

  data_type: 'real'
  is_nullable: 0

Excise Percentage inDealer Gate Pass

=head2 dealerexciseamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Excise Amount in Dealer Gate Pass

=head2 dealerdutyperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Excise Duty Per Unit in Dealer Gate Pass

=head2 dealercesspercentage

  data_type: 'real'
  is_nullable: 0

Cess Percentage in Dealer Gate Pass

=head2 dealercessamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cess Amount in Dealer Gate Pass

=head2 dealercessperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Cess Per Unit in Dealer Gate Pass

=head2 dealeradion

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI on Value in Dealer Gate Pass

=head2 dealeradipercentage

  data_type: 'real'
  is_nullable: 0

ADI Percentage of Item in Dealer Gate Pass

=head2 dealeradiamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI Value of Item in Dealer Gate Pass

=head2 dealeradiperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

ADI Per Unit of Item in Dealer Gate Pass

=head2 dealersecpercentage

  data_type: 'real'
  is_nullable: 0

SEC Percentage in Dealer Gate Pass

=head2 dealersecamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SEC Amount in Dealer Gate Pass

=head2 dealersecperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

SEC Per Unit in Dealer Gate Pass

=head2 dealeracpercentage

  data_type: 'real'
  is_nullable: 0

Additional Cess Percentage of Item in Dealer Gate Pass

=head2 dealeracamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Cess Value of Item in Dealer Gate Pass

=head2 dealeracperunit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Additional Cess Per Unit of Item in Dealer Gate Pass

=head2 dealeradditionaldetail1

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Additional Information of Dealer for this Item.

=head2 dealeradditionaldetail2

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Additional Information of Dealer for this Item.

=head2 dealeradditionaldetail3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Additional Information of Dealer for this Item.

=head2 dealeradditionaldetail4

  data_type: 'varchar'
  is_nullable: 0
  size: 50

Additional Information of Dealer for this Item.

=head2 dealerrg23dpageno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Dealer RG23-D page No.

=head2 dealerrg23dentryno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Dealer RG23-D Entry No.

=head2 passedmodvat

  data_type: 'bit'
  is_nullable: 0

True if while Issue you want to Passed Modvat.

=head2 passedadi

  data_type: 'bit'
  is_nullable: 0

TRUE if Additional Duty of Import has Passed. (Only if Modvat has Passed)

=head2 printbuyername

  data_type: 'bit'
  is_nullable: 0

True if you want to Print Buyer Name with Consignee in Gate Pass Issued.

=head2 cancelgatepass

  data_type: 'bit'
  is_nullable: 0

True if Issued Gate Pass has Cancelled

=head2 rg23dpageno

  data_type: 'smallint'
  is_nullable: 0

Page No. of RG23-D Register

=head2 rg23dentryno

  data_type: 'smallint'
  is_nullable: 0

Entry No. of RG23-D Register

=head2 rg23dcfpageno

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Carry Forward Page Nos seperated by comma.

=head2 totalissue

  data_type: 'smallint'
  is_nullable: 0

No. of Issue against this Purchase.

=head2 issueserialno

  data_type: 'smallint'
  is_nullable: 0

Issue Serial No. of this Issued Gate Pass against Ref. Purchase

=head2 prg23dpageno

  data_type: 'smallint'
  is_nullable: 0

Page No. of RG23-D Register of Previous RG23-D Year.

=head2 prg23dentryno

  data_type: 'smallint'
  is_nullable: 0

Entry No. of RG23-D Register of Previous RG23-D Year.

=head2 prg23dcfpageno

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Carry Forward Page Nos seperated by comma. of Previous RG23-D Year.

=head2 ptotalissue

  data_type: 'smallint'
  is_nullable: 0

No. of Issue against this Purchase of Previous RG23-D Year.

=head2 pissueserialno

  data_type: 'smallint'
  is_nullable: 0

Issue Serial No. of this Issued Gate Pass against Ref. Purchase of Previous RG23-D Year.

=head2 pagesno

  data_type: 'smallint'
  is_nullable: 0

This is Common Page Sno. will Not be Change once Assigned only for Totallying Pharma Item.

=head2 issuesno

  data_type: 'smallint'
  is_nullable: 0

This is Common Issue Sno. will Not be Change once Assigned only for Totallying Pharma Item.

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Edit Flag while Entry

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if it is Default Standard Master.

=head2 locked

  data_type: 'bit'
  is_nullable: 0

Locked if this Entry has Locked.

=head2 used

  data_type: 'bit'
  is_nullable: 0

Used if this Master has Used.

=head2 sysdate

  data_type: 'datetime'
  is_nullable: 0

Syatem Date of Entry Entered.

=head2 selected

  data_type: 'bit'
  is_nullable: 0

Temporary Field to Selection.

=cut

__PACKAGE__->add_columns(
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
  "documentdate",
  { data_type => "datetime", is_nullable => 0 },
  "documentclasscode",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "rdocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "rbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "rdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "rseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "rdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "rdocumentdate",
  { data_type => "datetime", is_nullable => 0 },
  "ritemsno",
  { data_type => "smallint", is_nullable => 0 },
  "costcategorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "costcentrecode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "refno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "refdate",
  { data_type => "datetime", is_nullable => 0 },
  "billno",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "billdate",
  { data_type => "datetime", is_nullable => 0 },
  "refdocumentyear",
  { data_type => "smallint", is_nullable => 0 },
  "refbranchcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "refdocumenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "refseriescode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "refdocumentno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "refdocumentdate",
  { data_type => "datetime", is_nullable => 0 },
  "exciseinvoiceno",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "partycode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "consigneecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "itemsno",
  { data_type => "smallint", is_nullable => 0 },
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "valuation",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "batchserialno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "mfgdate",
  { data_type => "datetime", is_nullable => 0 },
  "expdate",
  { data_type => "datetime", is_nullable => 0 },
  "packing",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "idmark",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "make",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "mfgbatchno",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "quantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "quantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "exciseno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "excisename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "assessvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "excisepercentage",
  { data_type => "real", is_nullable => 0 },
  "exciseamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dutyperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "cesspercentage",
  { data_type => "real", is_nullable => 0 },
  "cessamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "cessperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adion",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adipercentage",
  { data_type => "real", is_nullable => 0 },
  "adiamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "adiperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "secpercentage",
  { data_type => "real", is_nullable => 0 },
  "secamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "secperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "acpercentage",
  { data_type => "real", is_nullable => 0 },
  "acamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "acperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "purchasefrom",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "dealerpurchase",
  { data_type => "bit", is_nullable => 0 },
  "mfgrcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "mfgrgatepassno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "mfgrgatepassdate",
  { data_type => "datetime", is_nullable => 0 },
  "mfgrremovaldate",
  { data_type => "datetime", is_nullable => 0 },
  "mfgrremovaltime",
  { data_type => "datetime", is_nullable => 0 },
  "mfgrquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgrassessvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgrexcisepercentage",
  { data_type => "real", is_nullable => 0 },
  "mfgrexciseamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgrdutyperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgrcesspercentage",
  { data_type => "real", is_nullable => 0 },
  "mfgrcessamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgrcessperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgradion",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgradipercentage",
  { data_type => "real", is_nullable => 0 },
  "mfgradiamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgradiperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgrsecpercentage",
  { data_type => "real", is_nullable => 0 },
  "mfgrsecamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgrsecperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgracpercentage",
  { data_type => "real", is_nullable => 0 },
  "mfgracamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgracperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "mfgradditionaldetail1",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "mfgradditionaldetail2",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "mfgradditionaldetail3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "mfgradditionaldetail4",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "dealercode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "dealergatepassno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "dealergatepassdate",
  { data_type => "datetime", is_nullable => 0 },
  "dealerremovaldate",
  { data_type => "datetime", is_nullable => 0 },
  "dealerremovaltime",
  { data_type => "datetime", is_nullable => 0 },
  "dealerquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealerassessvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealerexcisepercentage",
  { data_type => "real", is_nullable => 0 },
  "dealerexciseamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealerdutyperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealercesspercentage",
  { data_type => "real", is_nullable => 0 },
  "dealercessamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealercessperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealeradion",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealeradipercentage",
  { data_type => "real", is_nullable => 0 },
  "dealeradiamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealeradiperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealersecpercentage",
  { data_type => "real", is_nullable => 0 },
  "dealersecamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealersecperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealeracpercentage",
  { data_type => "real", is_nullable => 0 },
  "dealeracamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealeracperunit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "dealeradditionaldetail1",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "dealeradditionaldetail2",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "dealeradditionaldetail3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "dealeradditionaldetail4",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "dealerrg23dpageno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "dealerrg23dentryno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "passedmodvat",
  { data_type => "bit", is_nullable => 0 },
  "passedadi",
  { data_type => "bit", is_nullable => 0 },
  "printbuyername",
  { data_type => "bit", is_nullable => 0 },
  "cancelgatepass",
  { data_type => "bit", is_nullable => 0 },
  "rg23dpageno",
  { data_type => "smallint", is_nullable => 0 },
  "rg23dentryno",
  { data_type => "smallint", is_nullable => 0 },
  "rg23dcfpageno",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "totalissue",
  { data_type => "smallint", is_nullable => 0 },
  "issueserialno",
  { data_type => "smallint", is_nullable => 0 },
  "prg23dpageno",
  { data_type => "smallint", is_nullable => 0 },
  "prg23dentryno",
  { data_type => "smallint", is_nullable => 0 },
  "prg23dcfpageno",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "ptotalissue",
  { data_type => "smallint", is_nullable => 0 },
  "pissueserialno",
  { data_type => "smallint", is_nullable => 0 },
  "pagesno",
  { data_type => "smallint", is_nullable => 0 },
  "issuesno",
  { data_type => "smallint", is_nullable => 0 },
  "editflag",
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

=item * L</documentyear>

=item * L</branchcode>

=item * L</documenttype>

=item * L</seriescode>

=item * L</documentno>

=item * L</itemcode>

=item * L</itemsno>

=back

=cut

__PACKAGE__->set_primary_key(
  "documentyear",
  "branchcode",
  "documenttype",
  "seriescode",
  "documentno",
  "itemcode",
  "itemsno",
);

=head1 RELATIONS

=head2 itemcode

Type: belongs_to

Related object: L<Spectrum::Result::FaItemMaster>

=cut

__PACKAGE__->belongs_to(
  "itemcode",
  "Spectrum::Result::FaItemMaster",
  { itemcode => "itemcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

__PACKAGE__->belongs_to(
  "purchase",
  "Spectrum::Result::FaPurchaseBillRegister",
  { 'foreign.documentno' => "self.rdocumentno", join_type => 'left' },
);

__PACKAGE__->belongs_to(
  "sale",
  "Spectrum::Result::FaSalesInvoiceRegister",
  { 'foreign.documentno' => "self.documentno" , join_type => 'left'},
);
# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DGd+UAGz3sH7m0HxUVHoXQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
