package Test;
use Dancer ':syntax';
our $VERSION = '0.1';

use Dancer::Plugin::DBIC qw/schema/;
use Date::Manip;
use Data::Dumper qw/Dumper/;
use Spell;

get '/' => sub {
	template "hello.tt", { tt => 'default'};
};

post '/dcw' => sub {
	
	schema->storage->debug(1);
	schema->storage->dbh->{readonly};

	#FROM AND TO DATE
	my $parse_date = new Date::Manip::Date;
	my $from_date = (param ('from_date'));
	$parse_date->parse($from_date);
	my $from_date_time = $parse_date->printf('%Y-%m-%d %H:%M:%S');
	my $start_date = $parse_date->printf("%d-%m-%Y");
	my $to_date = (param ('to_date'));
	$parse_date->parse($to_date);
	my $to_date_time = $parse_date->printf('%Y-%m-%d %H:%M:%S');
	my $end_date = $parse_date->printf("%d-%m-%Y");
	my $month = $parse_date->printf('%m');
	my $year;
	if($month > 3){
		$month -= 3;
        $year = $parse_date->printf('%Y') . "-" . ($parse_date->printf('%Y') + 1);
	} else {
		$month += 9;
        $year = ($parse_date->printf('%Y') - 1) . "-" . $parse_date->printf('%Y');
    }
	#QUERY TO ITEM BILL STOCK
	my $rs = schema->resultset("FaItemBillStock")
				->search({
							documenttype => 'INV' ,
							storecode	 => (param 'warehouse_id'), 
							documentdate => { '<=' => $to_date_time , '>=' => $from_date_time},
							itemcode => (param ('product_id'))
					} ) ;

	#SELECT DOCUMENT NO AND RDOCUMENT NO
	my $sale_invoices = [ $rs->search->get_column('documentno')->all ];
	my $purchase_invoices = [ $rs->search->get_column('rdocumentno')->all ];

	#QUERY TO SALES INVOICE REGISTER
	my $sales = schema->resultset("FaSalesInvoiceRegister")
					->search(
						{
							documentno	=> { -in => $sale_invoices } ,
							branchcode	 => config->{info}->{branch}->{param 'warehouse_id'} ,
						},
						{ result_class	=> 'DBIx::Class::ResultClass::HashRefInflator',}
					);

	#QUERY TO PURCHASE BILL REGISTER
	my $purchase = schema->resultset("FaPurchaseBillRegister")
					->search(
						{
							documentno	=> { -in => $purchase_invoices } ,
							branchcode	 => config->{info}->{branch}->{param 'warehouse_id'} ,
						},
						{ result_class	=> 'DBIx::Class::ResultClass::HashRefInflator',}
					);

	#CREATING HASH REF
	my %sale_hash = map { $_->{documentno} => $_ } $sales->all;
	my %purchase_hash = map { $_->{documentno} => $_ } $purchase->all;

	#SELECT PARTYCODE
	my $accountcode = [ $rs->search->get_column('partycode')->all ];

	#QUERY TO ACCOUNT MASTER
	my $accountname = schema->resultset("FaAccountMaster")
					->search(
						{ accountcode	=> { -in => $accountcode } },
						{ result_class	=> 'DBIx::Class::ResultClass::HashRefInflator',}
					);

	#QUERY TO ACCOUNT ADDRESS MASTER
	my $accountaddress = schema->resultset("FaAccountAddressMaster")
					->search(
						{ accountcode	=> { -in => $accountcode } },
						{ result_class	=> 'DBIx::Class::ResultClass::HashRefInflator',}
					);

	#CREATING HASHREF
	my %accountname		= map { $_->{accountcode} => $_ } $accountname->all;
	my %accountaddress	= map { $_->{accountcode} => $_ } $accountaddress->all;

############################## SALE NOTE ##############################

	if ( (param 'report_type') eq 'sale_note' ){

		#DEFINE VARIABLES
		my $lr_array = [];
		my $invoice_no = [];
		my $transporters = [];
		my $total_freight = 0;
		my $total_godown_charge = 0;
		my $total_commission = 0;
		my $total_sales_tax = 0;
		my $total_discount = 0;
		my $total_invoice_amount = 0;
		my $total_quantity = 0;

		foreach my $row ( $rs->all ) {

			#SALE AND PURCHASE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};
			my $purchase_details = %purchase_hash->{$row->rdocumentno};

			#SALE AND PURCHASE QUANTITY
			my $sale_quantity = $sale_details->{'totalquantity'};
			my $purchase_quantity = $purchase_details->{'totalquantity'};

			#TOTAL QUANTITY
			$total_quantity = $total_quantity + $sale_quantity;

			#FREIGHT
			my $freight = (($purchase_details->{'amount2'} / $purchase_quantity) * $sale_quantity);
			$total_freight = $total_freight + $freight;

			#GODOWN CHARGE
			my $godown_charges = (($purchase_details->{'amount5'} / $purchase_quantity) * $sale_quantity);
			$total_godown_charge = $total_godown_charge + $godown_charges;

			#COMMISSION
			my $commission = (($purchase_details->{'amount1'} / $purchase_quantity) * $sale_quantity);
			$total_commission = $total_commission + $commission;

			#SALE TAX
			my $sales_tax = $sale_details->{'taxamount'} + $sale_details->{'amount4'};
			$total_sales_tax = $total_sales_tax + $sales_tax;

			#DISCOUNT
			my $discount = ((($purchase_details->{'amount6'} / $purchase_quantity ) * $sale_quantity)) * -1 ;
			$total_discount = $total_discount + $discount;

			#INVOICE AMOUNT
			my $invoice_amount = $sale_details->{'grossamount'};
			$total_invoice_amount = $total_invoice_amount + $sale_details->{'grossamount'};

			#ARRAY OF LR NO , INVOICE NO , TRANSPORTERS
			push @$lr_array , $purchase_details->{'lrno'};
			push @$invoice_no  , $row->documentno;
			push @$transporters  , $purchase_details->{'transportername'};

		}
		my $check_godown_charge = ($total_quantity * 125);
		my $check_commission	  =	($total_quantity * 225);
		my $check_freight = ($total_quantity * config->{info}->{freight_warehouse}->{param 'warehouse_id'} );

		my $total_expense = ($total_freight + $total_godown_charge + $total_commission + $total_sales_tax	 + $total_discount);
		my $final_amount  = ($total_invoice_amount - $total_expense);

		template "sale_note.tt", 
			{	freight			=> $total_freight ,
				godown_charge	=> $total_godown_charge ,
				commission		=> $total_commission ,
				tax				=> $total_sales_tax ,
				discount		=> $total_discount ,
				expense			=> $total_expense ,
				final_amount	=> $final_amount ,
				transporters	=> $transporters ,
				end_date		=> $end_date ,
				start_date		=> $start_date ,
				amount			=> $total_invoice_amount ,
				quantity		=> $total_quantity ,
				lr_array		=> $lr_array,
				invoice_no		=> $invoice_no ,
				branch			=> config->{info}->{store}->{param 'warehouse_id'} ,
				year			=> $year ,
				month			=> $month ,
				vat_no			=> config->{info}->{vat_no}->{param 'warehouse_id'} ,
				cst_no			=> config->{info}->{cst_no}->{param 'warehouse_id'} ,
				vat_date		=> config->{info}->{vat_date}->{param 'warehouse_id'} ,
				cst_date		=> config->{info}->{cst_date}->{param 'warehouse_id'} ,
				product_id		=> param ('product_id') ,
			};

	}

############################## GOODS RECIEVED ##############################

	elsif ( (param 'report_type') eq 'goods_received' ){

		#CREATING NEW DATE
		$parse_date->parse($from_date);
		my $new_month = $parse_date->printf('%m') - 1;
		my $new_year = $parse_date->printf('%Y');
		my $new_date = $new_year . "-" . $new_month . "-25";
		$parse_date->parse($new_date);
		my $new_date_time = $parse_date->printf("%Y-%m-%d %H:%M:%S");

		#QUERY TO ITEM BILL STOCK
		my $rs = schema->resultset("FaItemBillStock")
				->search({
							documenttype => 'PUR' ,
							storecode	 => (param 'warehouse_id') ,
							documentdate => { '<=' => $to_date_time , '>=' => $new_date_time} ,
							itemcode => (param ('product_id'))
					} ) ;

		#SELECT DOCUMENT NO 
		my $doc_no = [ $rs->search->get_column('documentno')->all ];

		#QUERY TO PURCHASE BILL REGISTER
		my $purchase = schema->resultset("FaPurchaseBillRegister")
				->search(
					{
						af_rec_dt => { '<=' => $to_date_time , '>=' => $from_date_time} ,
						accountcode	=> { '-IN'  => [qw/600001/] } ,
						documentno	=> { -in => $doc_no } ,
						branchcode	 => config->{info}->{branch}->{param 'warehouse_id'} ,

					},
					{ result_class	=> 'DBIx::Class::ResultClass::HashRefInflator',}
				);

		#DEFINE VARIABLES
		my $purchase_array = [];
		my $total_quantity = 0;

		foreach my $row ( $purchase->all  ) {

			#PURCHASE BILL NO , BILL DATE , LR NO , RECIEVE DATE , QUANTITY AND TRANSPORTER
			my $billno = $row->{'billno'};
			my $billdate = $row->{'billdate'};
			$parse_date->parse($billdate);
			my $bill_date = $parse_date->printf("%d-%m-%Y");
			my $lrno = $row->{'lrno'};
			my $receiveddate = $row->{'af_rec_dt'};
			$parse_date->parse($receiveddate);
			my $received_date = $parse_date->printf("%d-%m-%Y");

			my $purchase_quantity = $row->{'totalquantity'};
			my $transportername = $row->{'transportername'};

			#HASH OF BILL NO , BILL DATE , LR NO , RECIEVE DATE , QUANTITY AND TRANSPORTER
			my $hash = {
				billno			=> $billno,
				billdate		=> $bill_date,
				lr_no			=> $lrno ,
				received_date	=> $received_date ,
				quantity		=> $purchase_quantity,
				transportername	=> $transportername ,
			};

			#ARRAY OF HASHES
			push @$purchase_array , $hash;

			#TOTAL QUANTITY
			$total_quantity = $total_quantity + $purchase_quantity;
		}

		template "goods_recieved.tt",
			{
				invoices		=> $purchase_array ,
				totalquantity	=> $total_quantity ,
				branch			=> config->{info}->{store}->{param 'warehouse_id'} ,
				year			=> $year ,
				month			=> config->{info}->{findmonth}->{$month},
			};

	}

############################## COMMISSION ##############################

	elsif( (param 'report_type') eq 'commission' ){

		#DEFINE VARIABLES
		my $total_quantity = 0;
		my $total_commission = 0;

		foreach my $row ( $rs->all  ) {

			#SALE AND PURCHASE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};
			my $purchase_details = %purchase_hash->{$row->rdocumentno};

			#SALE AND PURCHASE QUANTITY
			my $sale_quantity = $sale_details->{'totalquantity'};
			my $purchase_quantity = $purchase_details->{'totalquantity'};

			#TOTAL QUANTITY
			$total_quantity = $total_quantity + $sale_quantity;

			#COMMISSION
			my $commission = (($purchase_details->{'amount1'} / $purchase_quantity) * $sale_quantity);
			$total_commission = $total_commission + $commission;

		}

		#CHECK COMMISSION
		my $check_commission = $total_quantity * 225 ;

		#COMMISSION IN WORDS
		my $words = spell_number($total_commission);

		template "commission.tt",
			{
				commission	=> $total_commission ,
				words		=> $words ,
				end_date	=> $end_date,
				month		=> $month,
				year		=> $year,
				branch		=> config->{info}->{store}->{param 'warehouse_id'},
				product_id		=> (param ('product_id'))
			};

	}

############################## GODOWN CHARGES ##############################

	elsif( (param 'report_type') eq 'godown_charges' ){

		#DEFINE VARIABLES
		my $total_quantity = 0;
		my $total_godown_charge = 0;

		foreach my $row ( $rs->all  ) {

			#SALE AND PURCHASE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};
			my $purchase_details = %purchase_hash->{$row->rdocumentno};

			#SALE AND PURCHASE QUANTITY
			my $sale_quantity = $sale_details->{'totalquantity'};
			my $purchase_quantity = $purchase_details->{'totalquantity'};

			#TOTAL QUANTITY
			$total_quantity = $total_quantity + $sale_quantity;

			#GODOWN CHARGE
			my $godown_charges = (($purchase_details->{'amount5'} / $purchase_quantity) * $sale_quantity);
			$total_godown_charge = $total_godown_charge + $godown_charges;

		}

		#CHECK GODOWN CHARGE
		my $check_godown_charges = $total_quantity * 125 ;

		#GODOWN CHARGE IN WORDS
		my $words = spell_number($total_godown_charge);

		template "godown_charges.tt",
			{
				godown_charges			=> $total_godown_charge ,
				godown_charges_words	=> $words ,
				end_date				=> $end_date,
				month					=> $month,
				year					=> $year,
				branch					=> config->{info}->{store}->{param 'warehouse_id'},
				product_id				=> (param ('product_id'))
			};

	}

############################## FREIGHT ##############################

	elsif ( (param 'report_type') eq 'freight' ){

		#DEFINE VARIABLES
		my $total_quantity = 0;
		my $total_freight = 0;

		foreach my $row ( $rs->all  ) {

			#SALE AND PURCHASE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};
			my $purchase_details = %purchase_hash->{$row->rdocumentno};

			#SALE AND PURCHASE QUANTITY
			my $sale_quantity = $sale_details->{'totalquantity'};
			my $purchase_quantity = $purchase_details->{'totalquantity'};

			#TOTAL QUANTITY
			$total_quantity = $total_quantity + $sale_quantity;

			#FREIGHT
			my $freight = (($purchase_details->{'amount2'} / $purchase_quantity) * $sale_quantity);
			$total_freight = $total_freight + $freight;

		}

		#CHECK FREIGHT
		my $check_freight = ($total_quantity * config->{info}->{freight_warehouse}->{param 'warehouse_id'} );

		#FREIGHT IN WORDS
		my $words = spell_number($total_freight);

		template "freight.tt",
			{
				freight			=> $total_freight ,
				freight_words	=> $words ,
				end_date		=> $end_date,
				month			=> config->{info}->{findmonth}->{$month},
				year			=> $year,
				branch			=> config->{info}->{store}->{param 'warehouse_id'},
			};

	}

############################## DISCOUNT ##############################

	elsif ( (param 'report_type') eq 'discount' ){

		#DEFINE VARIABLES
		my $array = [];
		my $total_quantity = 0;
		my $total_discount = 0;
		my $newhash = {};

		foreach my $row ( $rs->all  ) {

			#SALE AND PURCHASE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};
			my $purchase_details = %purchase_hash->{$row->rdocumentno};

			#SALE AND PURCHASE QUANTITY
			my $sale_quantity = $sale_details->{'totalquantity'};
			my $purchase_quantity = $purchase_details->{'totalquantity'};

			#TOTAL QUANTITY
			$total_quantity = $total_quantity + $sale_quantity;

			#DISCOUNT
			my $discount = ((($purchase_details->{'amount6'} / $purchase_quantity ) * $sale_quantity)) * -1;
			$total_discount = $total_discount + $discount;

			#BUYER NAME , SALE BILL NO , BILL DATE
			my $accountname = %accountname->{$row->partycode};
			my $buyer = $accountname->{'accountname'};
			my $billno = $row->documentno;
			my $billdate = $row->documentdate;
			$parse_date->parse($billdate);
			my $bill_date = $parse_date->printf("%d-%m-%Y");

			#HASH OF BUYER NAME , SALE BILL NO , BILL DATE , QUANTITY AND DISCOUNT
			my $hash = {
				buyer			=> $buyer,
				billno			=> $billno,
				billdate		=> $bill_date,
				quantity		=> $sale_quantity,
				discount		=> $discount,
				consignee_id	=> $row->partycode,
			};
				my %accountaddress	= map { $_->{accountcode} => $_ } $accountaddress->all;

			if (!$newhash->{$row->partycode}->{address}) {
				$newhash->{$row->partycode}->{address} = %accountaddress->{$row->partycode}->{address1} . " , " .
														%accountaddress->{$row->partycode}->{address2} . " , " .
														%accountaddress->{$row->partycode}->{address3} . " , " .
														%accountaddress->{$row->partycode}->{city} . " , " .
														%accountaddress->{$row->partycode}->{pin} . " , " .
														%accountaddress->{$row->partycode}->{place} ;
			}
			if (!$newhash->{$row->partycode}->{amount}) {
				$newhash->{$row->partycode}->{amount} = 0;
			}
			if (!$newhash->{$row->partycode}->{inv_no}) {
				$newhash->{$row->partycode}->{inv_no} = [];
			}

			$newhash->{$row->partycode}->{amount} = $newhash->{$row->partycode}->{amount} + $discount;
			$newhash->{$row->partycode}->{inv_no} = $newhash->{$row->partycode}->{inv_no} . "," . $billno . "," ;
			$newhash->{$row->partycode}->{name} = $buyer;
			$newhash->{$row->partycode}->{words} = spell_number($newhash->{$row->partycode}->{amount});

			#ARRAY OF HASHES
			push @$array , $hash;

		}

		template "discount.tt", 
			{
				discountarray	=> $array ,
				totaldiscount	=> $total_discount ,
				totalquantity	=> $total_quantity ,
				branch			=> config->{info}->{store}->{param 'warehouse_id'} ,
				year			=> $year ,
				month			=> config->{info}->{findmonth}->{$month} ,
				credit_notes	=> $newhash,
				end_date		=> $end_date,

		};

	}

############################## EXCESS SHORTAGE ##############################

	elsif ( (param 'report_type') eq 'excess_shortage' ){

		#DEFINE VARIABLES
		my $array = [];
		my $total_invoice_amount = 0;
		my $total_freight = 0;
		my $total_godown_charge = 0;
		my $total_commission = 0;
		my $total_sales_tax = 0;
		my $total_discount = 0;
		my $total_net_amount = 0;
		my $total_sale_quantity = 0;
		my $total_basic_price = 0;
		my $total_excise = 0;
		my $total_insurance = 0;
		my $total_net_amount_2 = 0;

		foreach my $row ( $rs->all ) {

			#SALE AND PURCHASE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};
			my $purchase_details = %purchase_hash->{$row->rdocumentno};

			#SALE AND PURCHASE QUANTITY
			my $sale_quantity = $sale_details->{'totalquantity'};
			my $purchase_quantity = $purchase_details->{'totalquantity'};
			$total_sale_quantity = $total_sale_quantity + $sale_quantity;

			#BUYER NAME
			my $accountname = %accountname->{$row->partycode};
			my $customer_name = $accountname->{'accountname'};

			#INVOICE AMOUNT
			my $invoice_amount = $sale_details->{'grossamount'};
			debug("HELLO" .  $sale_details->{'totalquantity'} . "-------" . $sale_details->{'documentno'});
			$total_invoice_amount = $total_invoice_amount + $sale_details->{'grossamount'};

			#FREIGHT
			my $freight = (($purchase_details->{'amount2'} / $purchase_quantity) * $sale_quantity);
			$total_freight = $total_freight + $freight;

			#GODOWN CHARGE
			my $godown_charges = (($purchase_details->{'amount5'} / $purchase_quantity) * $sale_quantity);
			$total_godown_charge = $total_godown_charge + $godown_charges;

			#COMMISSION
			my $commission = (($purchase_details->{'amount1'} / $purchase_quantity) * $sale_quantity);
			$total_commission = $total_commission + $commission;

			#SALE TAX
			my $sales_tax = $sale_details->{'taxamount'} + $sale_details->{'amount4'};
			$total_sales_tax = $total_sales_tax + $sales_tax;

			#DISCOUNT
			my $discount = ((($purchase_details->{'amount6'} / $purchase_quantity ) * $sale_quantity)) * -1;
			$total_discount = $total_discount + $discount;

			#NET AMOUNT
			my $net_amount = $invoice_amount - $freight - $godown_charges - $commission - $sales_tax - $discount;
			$total_net_amount = $total_net_amount + $net_amount;

			#LR NO
			my $lr_no = $purchase_details->{'lrno'};

			#BASIC RATE
			my $basic = $purchase_details->{'assessvalue'} - $purchase_details->{'amount5'} - 
						$purchase_details->{'amount3'}  - $purchase_details->{'amount1'} - $purchase_details->{'amount2'} ;
			my $basic_price = $basic * $sale_quantity / $purchase_quantity;
			$total_basic_price = $total_basic_price + $basic_price;

			#EXCISE
			my $cenvat = $purchase_details->{'assessvalue'} * 12 / 100 ;
			my $cess = $cenvat * 2 / 100 ;
			my $hesc = $cenvat / 100 ;
			my $excise = $cenvat + $cess + $hesc ;
			$excise = $excise * $sale_quantity / $purchase_quantity;
			$excise = round($excise);
			$total_excise = $total_excise + $excise;

			#INSURANCE
			my $insurance = (($purchase_details->{'amount3'} / $purchase_quantity) * $sale_quantity);
			$total_insurance = $total_insurance + $insurance;

			#NET AMOUNT 2
			my $net_amount_2 = $basic_price + $excise + $insurance - $discount;
			$total_net_amount_2 = $total_net_amount_2 + $net_amount_2;

			#SALE DATE
			my $saledate = $row->documentdate;
			$parse_date->parse($saledate);
			my $sale_date = $parse_date->printf("%d-%m-%Y");

			#PURCHASE DATE
			my $purchasedate = $row->billdate;
			$parse_date->parse($purchasedate);
			my $purchase_date = $parse_date->printf("%d-%m-%Y");

			#HASH OF INVOICE NO , INVOICE DATE , CUSTOMER NAME , INVOICE AMOUNT , FREIGHT , GODOWN CHARGES ,
			#		 COMMISSION , TAX , DISCOUNT , NET AMOUNT , BILL NO , BILL DATE , LR NO , SALE QUANTITY ,
			#		 BASIC PROCE , EXCISE , INSURANCE , NET AMOUNT 2
			my $hash = {
				invoice_no		=> $row->documentno ,
				invoice_date	=> $sale_date ,
				customer_name	=> $customer_name ,
				invoice_amount	=> $invoice_amount ,
				freight			=> $freight ,
				godown_charges	=> $godown_charges ,
				commission		=> $commission ,
				sale_tax		=> $sales_tax ,
				discount		=> $discount ,
				net_amount		=> $net_amount ,
				bill_no			=> $row->billno ,
				bill_date		=> $purchase_date ,
				lr_no			=> $lr_no ,
				sale_quantity	=> $sale_quantity ,
				basic_price		=> $basic_price ,
				excise			=> $excise ,
				insurance		=> $insurance ,
				net_amount_2	=> $net_amount_2
			};

			#ARRAY OF HASHES
			push @$array , $hash;

		}

		template "excess_shortage.tt",
			{
				array					=> $array ,
				total_invoice_amount	=> $total_invoice_amount ,
				total_freight			=> $total_freight ,
				total_godown_charge		=> $total_godown_charge ,
				total_commission		=> $total_commission ,
				total_sales_tax			=> $total_sales_tax ,
				total_discount			=> $total_discount ,
				total_net_amount		=> $total_net_amount , 
				total_sale_quantity		=> $total_sale_quantity ,
				total_baisc_price		=> $total_basic_price ,
				total_excise			=> $total_excise ,
				total_insurance			=> $total_insurance ,
				total_net_amount_2		=> $total_net_amount_2 ,
				month					=> config->{info}->{info}->{findmonth}->{$month} ,
				year					=> $year ,
				address					=> config->{info}->{address}->{ (param 'warehouse_id' ) } ,

			};

	}

############################## TAX ##############################

	elsif ( (param 'report_type') eq 'tax' ){

		#DEFINE VARIABLES
		my $total_sales_tax = 0;

		foreach my $row ( $rs->all  ) {

			#SALE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};

			#SALE TAX
			my $sales_tax = $sale_details->{'taxamount'} + $sale_details->{'amount4'};
			$total_sales_tax = $total_sales_tax + $sales_tax;

		}

		#TAX IN WORDS
		my $words = spell_number($total_sales_tax);

		template "tax.tt",
			{
				tax			=> $total_sales_tax ,
				tax_words	=> $words ,
				end_date	=> $end_date,
				month		=> config->{info}->{findmonth}->{$month},
				year		=> $year,
				branch		=> config->{info}->{store}->{param 'warehouse_id'},
			};

	}

############################## STOCK ##############################

	elsif ( (param 'report_type') eq 'stock' ){


#------------------------------- FOR SALE ---------------------------
		#DEFINE VARIABLES
		my $sale_array = [];
		my $total_sale_quantity = 0;

		foreach my $row ( $rs->all ) {

			#SALE AND PURCHASE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};
			my $purchase_details = %purchase_hash->{$row->rdocumentno};

			#SALE AND PURCHASE QUANTITY
			my $sale_quantity = $sale_details->{'totalquantity'};
			my $purchase_quantity = $purchase_details->{'totalquantity'};
			$total_sale_quantity = $total_sale_quantity + $sale_quantity;

			#BASIC RATE
			my $basic = $purchase_details->{'assessvalue'} - $purchase_details->{'amount5'} - 
						$purchase_details->{'amount3'}  - $purchase_details->{'amount1'} - $purchase_details->{'amount2'} ;
			my $basic_price = $basic / $purchase_quantity;

			#HASH OF SALE QUANTITY , PURCHASE QUANTITY , BASIC PRICE
			my $hash = {
				sale_quantity		=> $sale_quantity ,
				purchase_quantity	=> $purchase_quantity ,
				basic_price			=> $basic_price ,
			};

			#ARRAY OF HASHES
			push @$sale_array , $hash;

		}

		my $new_sale_quantity = {};
		foreach my $row ( @$sale_array ) {
			$new_sale_quantity->{$row->{basic_price}} = 0;
		};
		foreach my $row ( @$sale_array ) {
			$new_sale_quantity->{$row->{basic_price}} = $new_sale_quantity->{$row->{basic_price}} + $row->{sale_quantity}   ;
		};

#------------------------------- FOR PURCHASE -----------------------------------------

		#CREATING NEW DATE
		$parse_date->parse($from_date);
		my $new_month = $parse_date->printf('%m') - 1;
		my $new_year = $parse_date->printf('%Y');
		my $new_date = $new_year . "-" . $new_month . "-25";
		$parse_date->parse($new_date);
		my $new_date_time = $parse_date->printf("%Y-%m-%d %H:%M:%S");

		#QUERY TO ITEM BILL STOCK
		my $rs = schema->resultset("FaItemBillStock")
				->search({
							documenttype => 'PUR' ,
							storecode	 => (param 'warehouse_id'), 
							documentdate => { '<=' => $to_date_time , '>=' => $new_date_time},
							itemcode => { '-IN'  => [qw/3001 3060/] }
					} ) ;

		#SELECT DOCUMENT NO 
		my $doc_no = [ $rs->search->get_column('documentno')->all ];

		#QUERY TO PURCHASE BILL REGISTER
		my $purchase = schema->resultset("FaPurchaseBillRegister")
				->search(
					{
						af_rec_dt => { '<=' => $to_date_time , '>=' => $from_date_time} ,
						accountcode	=> { '-IN'  => [qw/600001/] } ,
						documentno	=> { -in => $doc_no } ,
						branchcode	 => config->{info}->{branch}->{param 'warehouse_id'} ,
					},
					{ result_class	=> 'DBIx::Class::ResultClass::HashRefInflator',}
				);

		#DEFINE VARIABLES
		my $purchase_array = [];
		my $total_purcahse_quantity = 0;

		foreach my $row ( $rs->all  ) {

			#SALE AND PURCHASE DETAILS
			my $sale_details = %sale_hash->{$row->documentno};
			my $purchase_details = %purchase_hash->{$row->rdocumentno};

			#SALE AND PURCHASE QUANTITY
			my $sale_quantity = $sale_details->{'totalquantity'};
			my $purchase_quantity = $purchase_details->{'totalquantity'};
			$total_purcahse_quantity = $total_purcahse_quantity + $purchase_quantity;

			#BASIC RATE
			my $basic = $purchase_details->{'assessvalue'} - $purchase_details->{'amount5'} - 
						$purchase_details->{'amount3'}  - $purchase_details->{'amount1'} - $purchase_details->{'amount2'} ;
			my $basic_price = $basic / $purchase_quantity;

			#HASH OF SALE QUANTITY , PURCHASE QUANTITY , BASIC PRICE
			my $hash = {
				sale_quantity		=> $sale_quantity ,
				purchase_quantity	=> $purchase_quantity ,
				basic_price			=> $basic_price ,
			};

			#ARRAY OF HASHES
			push @$purchase_array , $hash;

		}

		my $new_purchase_quantity = {};
		foreach my $row ( @$purchase_array ) {
			$new_purchase_quantity->{$row->{basic_price}} = 0;
		};
		foreach my $row ( @$purchase_array ) {
			$new_purchase_quantity->{$row->{basic_price}} = $new_purchase_quantity->{$row->{basic_price}} + $row->{purchase_quantity}   ;
		};

		my @basic_prices = ( keys %{ $new_purchase_quantity } );
		
		foreach my $br ( keys %$new_sale_quantity ) {
			
			push @basic_prices, $br unless ( grep (@basic_prices, $br) );
		}
		
		my $new_array = [];
		foreach my $row ( @basic_prices ) {
			my $new_hash = {
				basic_price			=> $row ,
				sale_quantity		=> $new_sale_quantity->{$row} ,
				purchase_quantity	=> $new_purchase_quantity->{$row} ,
			};
			push @$new_array , $new_hash ;
		}

		template "stock.tt",
			{
				array						=> $new_array ,
				total_sale_quantity			=> $total_sale_quantity ,
				total_purcahse_quantity		=> $total_purcahse_quantity ,
				month						=> config->{info}->{findmonth}->{$month} ,
				year						=> $year ,
				end_date					=> $end_date,
				branch						=> config->{info}->{store}->{param 'warehouse_id'},
			};

	}

################################# ELSE ##################################

	else {

		template "hello.tt" ,
			{
				tt => 'tt'
			};

	}

sub round {
  my($number) = shift;
  return int($number + .5 * ($number <=> 0));
}
};

true;
