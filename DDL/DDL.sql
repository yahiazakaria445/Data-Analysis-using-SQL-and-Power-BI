create or replace TABLE SALES.PUBLIC.FACT (
	DATEID NUMBER(38,0),
	PRODUCTID NUMBER(38,0),
	STOREID NUMBER(38,0),
	CUSTOMERID NUMBER(38,0),
	QUANTITYORDERDED NUMBER(38,0),
	ORDERAMOUNT NUMBER(38,0),
	DISCOUNTAMOUNT NUMBER(38,16),
	SHIPPINGCOST NUMBER(38,16),
	TOTALAMOUNT NUMBER(38,14),
	ORDER_DATETIME TIMESTAMP_NTZ(9),
	ORDER_HOUR NUMBER(2,0)
);

create or replace TABLE SALES.PUBLIC.DIMSTORE (
	STORENAME VARCHAR(16777216),
	STORETYPE VARCHAR(16777216),
	STOREOPENINGDATE DATE,
	ADDRESS VARCHAR(16777216),
	CITY VARCHAR(16777216),
	STATE VARCHAR(16777216),
	COUNTRY VARCHAR(16777216),
	REGION VARCHAR(16777216),
	MANAGERNAME VARCHAR(16777216),
	STOREID NUMBER(38,0)
);

create or replace TABLE SALES.PUBLIC.DIMPRODUCTDATA (
	PRODUCTNAME VARCHAR(16777216),
	CATEGORY VARCHAR(16777216),
	BRAND VARCHAR(16777216),
	UNITPRICE NUMBER(38,0),
	PRODUCTID NUMBER(38,0)
);

create or replace TABLE SALES.PUBLIC.DIMLOYALTYINFO (
	LOYALTYPROGRAMID NUMBER(38,0),
	PROGRAMNAME VARCHAR(16777216),
	PROGRAMTIER VARCHAR(16777216),
	POINTSACCRUED NUMBER(38,0)
);

create or replace TABLE SALES.PUBLIC.DIMDATE (
	DATEID NUMBER(38,0),
	DATE DATE,
	DAYOFWEEK NUMBER(38,0),
	MONTH NUMBER(38,0),
	QUARTER NUMBER(38,0),
	YEAR NUMBER(38,0),
	ISWEEKEND BOOLEAN
);

create or replace TABLE SALES.PUBLIC.DIMCUSTOMER (
	FIRSTNAME VARCHAR(16777216),
	LASTNAME VARCHAR(16777216),
	GENDER VARCHAR(16777216),
	DATEOFBIRTH DATE,
	EMAIL VARCHAR(16777216),
	PHONENUMBER VARCHAR(16777216),
	ADDRESS VARCHAR(16777216),
	CITY VARCHAR(16777216),
	STATE VARCHAR(16777216),
	POSTALCODE VARCHAR(16777216),
	COUNTRY VARCHAR(16777216),
	LOYALTYPROGRAMID VARCHAR(16777216),
	CUSTOMER_UNIQUE_ID NUMBER(38,0),
	constraint PK_DIMCUSTOMER primary key (LOYALTYPROGRAMID)
);
