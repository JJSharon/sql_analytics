-- Table: CUSTOMERS
-- Purpose: Stores customer master data
-- Source: Kaggle sales_data_sample dataset


CREATE TABLE APPUSER.CUSTOMERS
(
  CUSTOMER_ID       NUMBER GENERATED ALWAYS AS IDENTITY ( START WITH 101 MAXVALUE 9999999999999999999999999999 MINVALUE 1 NOCYCLE CACHE 20 NOORDER NOKEEP NOSCALE) NOT NULL,
  CUSTOMERNAME      VARCHAR2(100 BYTE),
  PHONE             VARCHAR2(30 BYTE),
  ADDRESSLINE1      VARCHAR2(150 BYTE),
  ADDRESSLINE2      VARCHAR2(150 BYTE),
  CITY              VARCHAR2(50 BYTE),
  STATE             VARCHAR2(50 BYTE),
  POSTALCODE        VARCHAR2(20 BYTE),
  COUNTRY           VARCHAR2(50 BYTE),
  TERRITORY         VARCHAR2(20 BYTE),
  CONTACTLASTNAME   VARCHAR2(50 BYTE),
  CONTACTFIRSTNAME  VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE;


ALTER TABLE APPUSER.CUSTOMERS ADD (
  PRIMARY KEY
  (CUSTOMER_ID)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE
,  UNIQUE (CUSTOMERNAME)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);


--  There is no statement for index APPUSER.SYS_C008231.
--  The object is created when the parent object is created.
--  There is no statement for index APPUSER.SYS_C008232.
--  The object is created when the parent object is created.
