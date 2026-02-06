-- ORDERS
-- Stores order-level transactional data including order dates,
-- status, and time-based dimensions for analytics.


CREATE TABLE APPUSER.ORDERS
(
  ORDERNO      NUMBER,
  ORDERDATE    DATE,
  STATUS       VARCHAR2(20 BYTE),
  QTR_ID       NUMBER,
  MONTH_ID     NUMBER,
  YEAR_ID      NUMBER,
  CUSTOMER_ID  NUMBER
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


ALTER TABLE APPUSER.ORDERS ADD (
  PRIMARY KEY
  (ORDERNO)
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


--  There is no statement for index APPUSER.SYS_C008239.
--  The object is created when the parent object is created.
