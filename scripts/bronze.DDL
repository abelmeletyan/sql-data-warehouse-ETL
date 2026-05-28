-- use datawarehouse;    3 varia

-- create DDL

if object_id('bronze.crm_cust_info', 'U') is not null
	drop table bronze.crm_cust_info;

create table bronze.crm_cust_info
(
	cst_id int,
	cst_key varchar(100),
	cst_firstname varchar(100),
	cst_lastname varchar(100),
	cst_marital_status varchar(100),
	cst_gndr varchar(100),	
	cst_create_date date
);

if object_id('bronze.crm_prd_info', 'U') is not null
	drop table bronze.crm_prd_info;

create table bronze.crm_prd_info
(
	prd_id int,	
	prd_key varchar(100),
	prd_nm varchar(100),
	prd_cost int,
	prd_line varchar(100),
	prd_start_dt date,
	prd_end_dt date
);

if object_id('bronze.crm_sales_details', 'U') is not null
	drop table bronze.crm_sales_details;

create table bronze.crm_sales_details
(
	sls_ord_num	varchar(100),
	sls_prd_key	varchar(100),
	sls_cust_id	int,
	sls_order_dt int,
	sls_ship_dt int,
	sls_due_dt int,
	sls_sales int,
	sls_quantity int,
	sls_price int
);

if object_id('bronze.erp_cust_az12', 'U') is not null
	drop table bronze.erp_cust_az12;

create table bronze.erp_cust_az12
(
	CID varchar(100),
	bdate date,
	gen varchar(100)
);

if object_id('bronze.erp_loc_a101', 'U') is not null
	drop table bronze.erp_loc_a101;

create table bronze.erp_loc_a101
(
	cid varchar(100),
	cntry varchar(100)
);

if object_id('bronze.erp_px_cat_g1v2', 'U') is not null
	drop table bronze.erp_px_cat_g1v2;

create table bronze.erp_px_cat_g1v2
(
	id varchar(100),
	cat varchar(100),
	subcat varchar(100),
	maintenance varchar(100)
);


