use utf8;
package Spectrum::Result::FaAccountMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaAccountMaster - Account Master Store Master Requirement of Accounts.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaAccountMaster>

=cut

__PACKAGE__->table("FaAccountMaster");

=head1 ACCESSORS

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code of Master.

=head2 accountname

  data_type: 'varchar'
  is_nullable: 0
  size: 40

Name of the Account

=head2 parentgroupcode

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 6

Parent Group Code under which this account will appear

=head2 shortcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Short Code for this account for speed entry

=head2 accountclasscode

  data_type: 'varchar'
  is_nullable: 0
  size: 5

Account Classification code for this account

=head2 creditlimit

  data_type: 'double precision'
  is_nullable: 0
  original: {data_type => "double"}

Credit Limit for this account for transaction.

=head2 locklimit

  data_type: 'bit'
  is_nullable: 0

True if Lock Account for further entry if limit exceeds

=head2 referencename

  data_type: 'varchar'
  is_nullable: 0
  size: 75

Raference Name of this account specially to print on Cheque or Receipt

=head2 summaryposting

  data_type: 'bit'
  is_nullable: 0

True if this account require summary posting in ledger

=head2 printreceipt

  data_type: 'bit'
  is_nullable: 0

True if this account require to print receipt only for cash & bank account

=head2 addressrequired

  data_type: 'bit'
  is_nullable: 0

True if this account require address detail

=head2 depit

  data_type: 'real'
  is_nullable: 0

Depreciation percentage on base of Income Tax Rule

=head2 depcomp

  data_type: 'real'
  is_nullable: 0

Depreciation percentage on base of Company Act rule

=head2 depaccountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Depreciation fund account code to pass auto JV

=head2 locktypes

  data_type: 'varchar'
  is_nullable: 0
  size: 180

Document Types list for which this account has locked

=head2 standard

  data_type: 'bit'
  is_nullable: 0

True if Account is standard

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
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountname",
  { data_type => "varchar", is_nullable => 0, size => 40 },
  "parentgroupcode",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 6 },
  "shortcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "accountclasscode",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "creditlimit",
  {
    data_type   => "double precision",
    is_nullable => 0,
    original    => { data_type => "double" },
  },
  "locklimit",
  { data_type => "bit", is_nullable => 0 },
  "referencename",
  { data_type => "varchar", is_nullable => 0, size => 75 },
  "summaryposting",
  { data_type => "bit", is_nullable => 0 },
  "printreceipt",
  { data_type => "bit", is_nullable => 0 },
  "addressrequired",
  { data_type => "bit", is_nullable => 0 },
  "depit",
  { data_type => "real", is_nullable => 0 },
  "depcomp",
  { data_type => "real", is_nullable => 0 },
  "depaccountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
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

=item * L</accountcode>

=back

=cut

__PACKAGE__->set_primary_key("accountcode");

=head1 RELATIONS

=head2 fa_account_address_master

Type: might_have

Related object: L<Spectrum::Result::FaAccountAddressMaster>

=cut

__PACKAGE__->might_have(
  "fa_account_address_master",
  "Spectrum::Result::FaAccountAddressMaster",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_account_balance_masters

Type: has_many

Related object: L<Spectrum::Result::FaAccountBalanceMaster>

=cut

__PACKAGE__->has_many(
  "fa_account_balance_masters",
  "Spectrum::Result::FaAccountBalanceMaster",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_account_ledgers

Type: has_many

Related object: L<Spectrum::Result::FaAccountLedger>

=cut

__PACKAGE__->has_many(
  "fa_account_ledgers",
  "Spectrum::Result::FaAccountLedger",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_account_provisionals

Type: has_many

Related object: L<Spectrum::Result::FaAccountProvisional>

=cut

__PACKAGE__->has_many(
  "fa_account_provisionals",
  "Spectrum::Result::FaAccountProvisional",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_bank_masters

Type: has_many

Related object: L<Spectrum::Result::FaBankMaster>

=cut

__PACKAGE__->has_many(
  "fa_bank_masters",
  "Spectrum::Result::FaBankMaster",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_budget_accounts

Type: has_many

Related object: L<Spectrum::Result::FaBudgetAccount>

=cut

__PACKAGE__->has_many(
  "fa_budget_accounts",
  "Spectrum::Result::FaBudgetAccount",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_cost_centre_balances

Type: has_many

Related object: L<Spectrum::Result::FaCostCentreBalance>

=cut

__PACKAGE__->has_many(
  "fa_cost_centre_balances",
  "Spectrum::Result::FaCostCentreBalance",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_delivery_challan_registers

Type: has_many

Related object: L<Spectrum::Result::FaDeliveryChallanRegister>

=cut

__PACKAGE__->has_many(
  "fa_delivery_challan_registers",
  "Spectrum::Result::FaDeliveryChallanRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_delivery_order_registers

Type: has_many

Related object: L<Spectrum::Result::FaDeliveryOrderRegister>

=cut

__PACKAGE__->has_many(
  "fa_delivery_order_registers",
  "Spectrum::Result::FaDeliveryOrderRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_goods_inward_register

Type: has_many

Related object: L<Spectrum::Result::FaGoodInwardRegister>

=cut

__PACKAGE__->has_many(
  "fa_goods_inward_register",
  "Spectrum::Result::FaGoodInwardRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_osregs

Type: has_many

Related object: L<Spectrum::Result::FaOsreg>

=cut

__PACKAGE__->has_many(
  "fa_osregs",
  "Spectrum::Result::FaOsreg",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_amendment_registers

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseAmendmentRegister>

=cut

__PACKAGE__->has_many(
  "fa_purchase_amendment_registers",
  "Spectrum::Result::FaPurchaseAmendmentRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_bill_products

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseBillProduct>

=cut

__PACKAGE__->has_many(
  "fa_purchase_bill_products",
  "Spectrum::Result::FaPurchaseBillProduct",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_bill_registers

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseBillRegister>

=cut

__PACKAGE__->has_many(
  "fa_purchase_bill_registers",
  "Spectrum::Result::FaPurchaseBillRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_enquiries

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseEnquiry>

=cut

__PACKAGE__->has_many(
  "fa_purchase_enquiries",
  "Spectrum::Result::FaPurchaseEnquiry",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_order_registers

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseOrderRegister>

=cut

__PACKAGE__->has_many(
  "fa_purchase_order_registers",
  "Spectrum::Result::FaPurchaseOrderRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_purchase_quotation_registers

Type: has_many

Related object: L<Spectrum::Result::FaPurchaseQuotationRegister>

=cut

__PACKAGE__->has_many(
  "fa_purchase_quotation_registers",
  "Spectrum::Result::FaPurchaseQuotationRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sale_note_products

Type: has_many

Related object: L<Spectrum::Result::FaSaleNoteProduct>

=cut

__PACKAGE__->has_many(
  "fa_sale_note_products",
  "Spectrum::Result::FaSaleNoteProduct",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sale_note_registers

Type: has_many

Related object: L<Spectrum::Result::FaSaleNoteRegister>

=cut

__PACKAGE__->has_many(
  "fa_sale_note_registers",
  "Spectrum::Result::FaSaleNoteRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_amendment_registers

Type: has_many

Related object: L<Spectrum::Result::FaSalesAmendmentRegister>

=cut

__PACKAGE__->has_many(
  "fa_sales_amendment_registers",
  "Spectrum::Result::FaSalesAmendmentRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_enquiries

Type: has_many

Related object: L<Spectrum::Result::FaSalesEnquiry>

=cut

__PACKAGE__->has_many(
  "fa_sales_enquiries",
  "Spectrum::Result::FaSalesEnquiry",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_invoice_products

Type: has_many

Related object: L<Spectrum::Result::FaSalesInvoiceProduct>

=cut

__PACKAGE__->has_many(
  "fa_sales_invoice_products",
  "Spectrum::Result::FaSalesInvoiceProduct",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_invoice_registers

Type: has_many

Related object: L<Spectrum::Result::FaSalesInvoiceRegister>

=cut

__PACKAGE__->has_many(
  "fa_sales_invoice_registers",
  "Spectrum::Result::FaSalesInvoiceRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_order_registers

Type: has_many

Related object: L<Spectrum::Result::FaSalesOrderRegister>

=cut

__PACKAGE__->has_many(
  "fa_sales_order_registers",
  "Spectrum::Result::FaSalesOrderRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fa_sales_quotation_registers

Type: has_many

Related object: L<Spectrum::Result::FaSalesQuotationRegister>

=cut

__PACKAGE__->has_many(
  "fa_sales_quotation_registers",
  "Spectrum::Result::FaSalesQuotationRegister",
  { "foreign.accountcode" => "self.accountcode" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 parentgroupcode

Type: belongs_to

Related object: L<Spectrum::Result::FaAccountGroupMaster>

=cut

__PACKAGE__->belongs_to(
  "parentgroupcode",
  "Spectrum::Result::FaAccountGroupMaster",
  { accountgroupcode => "parentgroupcode" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:y3qKWirN5xDzk34H4UkbDQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
