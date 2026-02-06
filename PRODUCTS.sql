-- PRODUCTS
-- Stores product master data including product codes, names,
-- categories, and pricing details used for sales and revenue analysis.


CREATE TABLE APPUSER.PRODUCTS
(
  PRODUCTCODE  VARCHAR2(50 BYTE),
  PRODUCTLINE  VARCHAR2(50 BYTE),
  MSRP         NUMBER
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


ALTER TABLE APPUSER.PRODUCTS ADD (
  PRIMARY KEY
  (PRODUCTCODE)
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


--  There is no statement for index APPUSER.SYS_C008233.
--  The object is created when the parent object is created.
