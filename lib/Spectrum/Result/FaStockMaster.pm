use utf8;
package Spectrum::Result::FaStockMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaStockMaster

=head1 DESCRIPTION

Stock Master store detail of Opening Stock, Summary of Month Transaction & Closing Stock for all valuation of Items.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaStockMaster>

=cut

__PACKAGE__->table("FaStockMaster");

=head1 ACCESSORS

=head2 itemcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 15

Item Code for which Stock Balance has stored

=head2 storecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Store Code for which stock balance has stored

=head2 batchserialno

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Batch Serial No. of Item in case of Batch / Serial / PharmaRG Items for which stock has entered

=head2 colorcode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Color Code of Item for which stock balance has stored

=head2 sizecode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Size Code of Item for which stock balance has stored

=head2 documentyear

  data_type: 'smallint'
  is_nullable: 0

Document Year for Bill / PharmaRG Pending Stock

=head2 branchcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Branch Code for Bill / PharmaRG Pending Stock

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type for Bill / PharmaRG Pending Stock

=head2 seriescode

  data_type: 'varchar'
  is_nullable: 0
  size: 4

Series Code for Bill / PharmaRG Pending Stock

=head2 documentno

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Document No for Bill / PharmaRG Pending Stock

=head2 documentdate

  data_type: 'datetime'
  is_nullable: 0

Document Date for Bill / PharmaRG Pending Stock

=head2 itemsno

  data_type: 'smallint'
  is_nullable: 0

Document Item Sno for Bill / PharmaRG Pending Stock

=head2 openingquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Quantity in Main Unit of above Items.

=head2 openingquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Quantity in other Unit of above Items.

=head2 openingrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Rate of stock items.

=head2 per

  data_type: 'integer'
  is_nullable: 0

Rate Per of Items

=head2 openingvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Opening Values of Stock Items

=head2 month1totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 1

=head2 month1totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 1

=head2 month2totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 2

=head2 month2totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 2

=head2 month3totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 3

=head2 month3totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 3

=head2 month4totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 4

=head2 month4totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 4

=head2 month5totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 5

=head2 month5totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 5

=head2 month6totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 6

=head2 month6totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 61

=head2 month7totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 7

=head2 month7totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 7

=head2 month8totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 8

=head2 month8totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 8

=head2 month9totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 9

=head2 month9totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 9

=head2 month10totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 10

=head2 month10totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 10

=head2 month11totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 11

=head2 month11totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 11

=head2 month12totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 12

=head2 month12totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 12

=head2 month13totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 13

=head2 month13totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 13

=head2 month14totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 14

=head2 month14totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 14

=head2 month15totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 15

=head2 month15totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 15

=head2 month16totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 16

=head2 month16totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 16

=head2 month17totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 17

=head2 month17totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 17

=head2 month18totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 18

=head2 month18totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 18

=head2 month19totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 19

=head2 month19totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 19

=head2 month20totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 20

=head2 month20totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 20

=head2 month21totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 21

=head2 month21totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 21

=head2 month22totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 22

=head2 month22totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 22

=head2 month23totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 23

=head2 month23totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 23

=head2 month24totalquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in Main Unit for Month 24

=head2 month24totalquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Transaction Summary of Quantity in other Unit for Month 24

=head2 stockquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Stock Quantity of Items in Main Unit

=head2 stockquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Stock Quantity of Items in other unit

=head2 rate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Rate of Item

=head2 stockvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Stock Value of Items

=head2 allocatequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Temporary Allocate Quantity in Main Unit

=head2 allocatequantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Temporary Allocate Quantity in Other Unit

=head2 receiptcount

  data_type: 'integer'
  is_nullable: 0

Total No. of Receipt upto date

=head2 totalreceiptquantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Receipt Quantity in Main Unit upto Date

=head2 totalreceiptquantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Receipt Quantity in other unit upto date

=head2 totalreceiptvalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Receipt Value upto date

=head2 lastreceiptdate

  data_type: 'datetime'
  is_nullable: 0

Last Receipt Date

=head2 issuecount

  data_type: 'integer'
  is_nullable: 0

Total No. of Issue upto date

=head2 totalissuequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Issue Quantity in Main Unit upto date

=head2 totalissuequantity1

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Issue Quantity in other unit upto date

=head2 totalissuevalue

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Total Issue Value upto date

=head2 lastissuedate

  data_type: 'datetime'
  is_nullable: 0

Last Issue Date

=head2 taxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Stores only in Case of BILL/PHARMA and  FIFO/BATCH/SERIALNO if Opening Stock is there.

=head2 taxableamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Stores only in Case of BILL/PHARMA and  FIFO/BATCH/SERIALNO if Opening Stock is there.

=head2 taxamount

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Stores only in Case of BILL/PHARMA and  FIFO/BATCH/SERIALNO if Opening Stock is there.

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if Standard

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

=head2 editflag

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Temporary Edit Flag

=cut

__PACKAGE__->add_columns(
  "itemcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 15 },
  "storecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "batchserialno",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "colorcode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "sizecode",
  { data_type => "varchar", is_nullable => 0, size => 4 },
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
  "itemsno",
  { data_type => "smallint", is_nullable => 0 },
  "openingquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "openingquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "openingrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "per",
  { data_type => "integer", is_nullable => 0 },
  "openingvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month1totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month1totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month2totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month2totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month3totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month3totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month4totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month4totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month5totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month5totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month6totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month6totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month7totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month7totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month8totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month8totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month9totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month9totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month10totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month10totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month11totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month11totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month12totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month12totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month13totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month13totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month14totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month14totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month15totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month15totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month16totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month16totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month17totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month17totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month18totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month18totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month19totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month19totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month20totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month20totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month21totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month21totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month22totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month22totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month23totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month23totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month24totalquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "month24totalquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "stockquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "stockquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "rate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "stockvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "allocatequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "allocatequantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "receiptcount",
  { data_type => "integer", is_nullable => 0 },
  "totalreceiptquantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "totalreceiptquantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "totalreceiptvalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "lastreceiptdate",
  { data_type => "datetime", is_nullable => 0 },
  "issuecount",
  { data_type => "integer", is_nullable => 0 },
  "totalissuequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "totalissuequantity1",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "totalissuevalue",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "lastissuedate",
  { data_type => "datetime", is_nullable => 0 },
  "taxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "taxableamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "taxamount",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
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
  "editflag",
  { data_type => "varchar", is_nullable => 0, size => 1 },
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


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BOgR7IfoNpr2N55/9n/iCg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
