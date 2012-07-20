use utf8;
package Spectrum::Result::FaItemMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaItemMaster - Item Master store details of Items.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaItemMaster>

=cut

__PACKAGE__->table("FaItemMaster");

=head1 ACCESSORS

=head2 itemcode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Item Code of Master

=head2 itemname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Item Name of Item

=head2 itemdescription

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "longchar"}

Item Multiline Description of Item

=head2 shortcode

  data_type: 'varchar'
  is_nullable: 0
  size: 15

Short Code of Item

=head2 productgroupcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Product Group Code of Item

=head2 categorycode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Product Category Code of Item

=head2 itemclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Item Class Code of Item

=head2 unit

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Main Unit of Item (Kgs/Box/Pcs/Nos)

=head2 unit1

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Second Unit of Item

=head2 unitdecimal

  data_type: 'smallint'
  is_nullable: 0

Unit Decimal of Main Unit

=head2 unit1decimal

  data_type: 'smallint'
  is_nullable: 0

Unit Decimal of Second Unit

=head2 conversionfactor

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Conversion Factor from Main Unit to Second Unit

=head2 locationno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Location No. where Item has located

=head2 valuation

  data_type: 'varchar'
  is_nullable: 0
  size: 1

Valuation of Item (S/W/F/L/B/P/G/A/N)

=head2 purchaserate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Purchase Rate of Item

=head2 purchaserateper

  data_type: 'integer'
  is_nullable: 0

Purchase Rate per of Item

=head2 salesrate

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Sales Rate of Item

=head2 salesrateper

  data_type: 'integer'
  is_nullable: 0

Sales Rate Per of Item

=head2 mrp

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

MRP of Item

=head2 excisecode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Excise Code of Item

=head2 exciseno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Excise (Tariff) No. of Item

=head2 excisename

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Excise (Commodity) name of Item

=head2 exciseunit

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Excise Tariff Unit.

=head2 exciseconversionfactor

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Conversion Factor from our main Unit to Excise Unit

=head2 salestaxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

SalesTax Code of Item

=head2 purchasetaxcode

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Purchase Tax Code of Item

=head2 salesaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Sales AccountCode of Item

=head2 purchaseaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Purchase Account Code of Item

=head2 schemerequired

  data_type: 'bit'
  is_nullable: 0

True if Item has having Scheme System

=head2 schemequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Scheme Quantity for Free Quantity

=head2 freequantity

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Free Quantity on Scheme Quantity

=head2 partydetailrequired

  data_type: 'bit'
  is_nullable: 0

True if Party wise Sales & Purcahse Detail is required.

=head2 locktypes

  data_type: 'varchar'
  is_nullable: 0
  size: 180

Document Types locked for item

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

=cut

__PACKAGE__->add_columns(
  "itemcode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "itemname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "itemdescription",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "longchar" },
  },
  "shortcode",
  { data_type => "varchar", is_nullable => 0, size => 15 },
  "productgroupcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "categorycode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "itemclasscode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "unit",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "unit1",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "unitdecimal",
  { data_type => "smallint", is_nullable => 0 },
  "unit1decimal",
  { data_type => "smallint", is_nullable => 0 },
  "conversionfactor",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "locationno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "valuation",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "purchaserate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "purchaserateper",
  { data_type => "integer", is_nullable => 0 },
  "salesrate",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salesrateper",
  { data_type => "integer", is_nullable => 0 },
  "mrp",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "excisecode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "exciseno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "excisename",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "exciseunit",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "exciseconversionfactor",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "salestaxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "purchasetaxcode",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "salesaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "purchaseaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "schemerequired",
  { data_type => "bit", is_nullable => 0 },
  "schemequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "freequantity",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "partydetailrequired",
  { data_type => "bit", is_nullable => 0 },
  "locktypes",
  { data_type => "varchar", is_nullable => 0, size => 180 },
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

=item * L</itemcode>

=back

=cut

__PACKAGE__->set_primary_key("itemcode");

=head1 RELATIONS

=head2 fa_batch_card_master_itemcodes

Type: has_many

Related object: L<Spectrum::Result::FaBatchCardMaster>

=cut

__PACKAGE__->has_many(
  "fa_batch_card_master_itemcodes",
  "Spectrum::Result::FaBatchCardMaster",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_batch_card_master_productcodes

Type: has_many

Related object: L<Spectrum::Result::FaBatchCardMaster>

=cut

__PACKAGE__->has_many(
  "fa_batch_card_master_productcodes",
  "Spectrum::Result::FaBatchCardMaster",
  { "foreign.productcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_delivery_challan_products

Type: has_many

Related object: L<Spectrum::Result::FaDeliveryChallanProduct>

=cut

__PACKAGE__->has_many(
  "fa_delivery_challan_products",
  "Spectrum::Result::FaDeliveryChallanProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_delivery_order_products

Type: has_many

Related object: L<Spectrum::Result::FaDeliveryOrderProduct>

=cut

__PACKAGE__->has_many(
  "fa_delivery_order_products",
  "Spectrum::Result::FaDeliveryOrderProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_goods_inward_products

Type: has_many

Related object: L<Spectrum::Result::FaGoodsInwardProduct>

=cut

__PACKAGE__->has_many(
  "fa_goods_inward_products",
  "Spectrum::Result::FaGoodsInwardProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_item_batch_serial_masters

Type: has_many

Related object: L<Spectrum::Result::FaItemBatchSerialMaster>

=cut

__PACKAGE__->has_many(
  "fa_item_batch_serial_masters",
  "Spectrum::Result::FaItemBatchSerialMaster",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_item_bill_stocks

Type: has_many

Related object: L<Spectrum::Result::FaItemBillStock>

=cut

__PACKAGE__->has_many(
  "fa_item_bill_stocks",
  "Spectrum::Result::FaItemBillStock",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_item_color_size_masters

Type: has_many

Related object: L<Spectrum::Result::FaItemColorSizeMaster>

=cut

__PACKAGE__->has_many(
  "fa_item_color_size_masters",
  "Spectrum::Result::FaItemColorSizeMaster",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_item_ledgers

Type: has_many

Related object: L<Spectrum::Result::FaItemLedger>

=cut

__PACKAGE__->has_many(
  "fa_item_ledgers",
  "Spectrum::Result::FaItemLedger",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_item_levels

Type: has_many

Related object: L<Spectrum::Result::FaItemLevel>

=cut

__PACKAGE__->has_many(
  "fa_item_levels",
  "Spectrum::Result::FaItemLevel",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_item_parts_no

Type: has_many

Related object: L<Spectrum::Result::FaItemPartNo>

=cut

__PACKAGE__->has_many(
  "fa_item_parts_no",
  "Spectrum::Result::FaItemPartNo",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_item_party_details

Type: has_many

Related object: L<Spectrum::Result::FaItemPartyDetail>

=cut

__PACKAGE__->has_many(
  "fa_item_party_details",
  "Spectrum::Result::FaItemPartyDetail",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_physical_stock_masters

Type: has_many

Related object: L<Spectrum::Result::FaPhysicalStockMaster>

=cut

__PACKAGE__->has_many(
  "fa_physical_stock_masters",
  "Spectrum::Result::FaPhysicalStockMaster",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_price_list_masters

Type: has_many

Related object: L<Spectrum::Result::FaPriceListMaster>

=cut

__PACKAGE__->has_many(
  "fa_price_list_masters",
  "Spectrum::Result::FaPriceListMaster",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_amendment_products

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseAmendmentProduct>

=cut

__PACKAGE__->has_many(
  "fa_purchase_amendment_products",
  "Spectrum::Result::FaPurchaseAmendmentProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_bill_products

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseBillProduct>

=cut

__PACKAGE__->has_many(
  "fa_purchase_bill_products",
  "Spectrum::Result::FaPurchaseBillProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_enquiries

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseEnquiry>

=cut

__PACKAGE__->has_many(
  "fa_purchase_enquiries",
  "Spectrum::Result::FaPurchaseEnquiry",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_indents

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseIndent>

=cut

__PACKAGE__->has_many(
  "fa_purchase_indents",
  "Spectrum::Result::FaPurchaseIndent",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_order_products

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseOrderProduct>

=cut

__PACKAGE__->has_many(
  "fa_purchase_order_products",
  "Spectrum::Result::FaPurchaseOrderProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_quotation_products

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseQuotationProduct>

=cut

__PACKAGE__->has_many(
  "fa_purchase_quotation_products",
  "Spectrum::Result::FaPurchaseQuotationProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_amendment_products

Type: has_many

Related object: L<Spectrum::Result::FaSalesAmendmentProduct>

=cut

__PACKAGE__->has_many(
  "fa_sales_amendment_products",
  "Spectrum::Result::FaSalesAmendmentProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_enquiries

Type: has_many

Related object: L<Spectrum::Result::FaSalesEnquiry>

=cut

__PACKAGE__->has_many(
  "fa_sales_enquiries",
  "Spectrum::Result::FaSalesEnquiry",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_invoice_products

Type: has_many

Related object: L<Spectrum::Result::FaSalesInvoiceProduct>

=cut

__PACKAGE__->has_many(
  "fa_sales_invoice_products",
  "Spectrum::Result::FaSalesInvoiceProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_order_products

Type: has_many

Related object: L<Spectrum::Result::FaSalesOrderProduct>

=cut

__PACKAGE__->has_many(
  "fa_sales_order_products",
  "Spectrum::Result::FaSalesOrderProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_quotation_products

Type: has_many

Related object: L<Spectrum::Result::FaSalesQuotationProduct>

=cut

__PACKAGE__->has_many(
  "fa_sales_quotation_products",
  "Spectrum::Result::FaSalesQuotationProduct",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_stock_masters

Type: has_many

Related object: L<Spectrum::Result::FaStockMaster>

=cut

__PACKAGE__->has_many(
  "fa_stock_masters",
  "Spectrum::Result::FaStockMaster",
  { "foreign.itemcode" => "self.itemcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PdGWMYsKKn83rKzZnw24+Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
