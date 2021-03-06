CREATE TABLE SHAW_OM_POS_LOGFIRE_STG
    (
      FACILITY_CODE        VARCHAR2(2000),
      COMPANY_CODE         VARCHAR2(2000),
      TRANSACTION_TYPE     VARCHAR2(200),
      TRANSACTION_ID       VARCHAR2(200),
      TRANSACTION_NBR      VARCHAR2(200),
      VENDOR_CODE          VARCHAR2(2000),
      ACTION_CODE          VARCHAR2(2000),
      DELIVERY_DATE        DATE,
      SHIP_DATE            DATE,
      CANCEL_DATE          DATE,
      PRE_PACK_CODE        VARCHAR2(2000),
      PRE_PACK_RATIO       VARCHAR2(2000),
      PRE_PACK_TOTAL_UNITS VARCHAR2(2000),
      UNIT_COST            NUMBER(30),
      UNIT_RETAIL          NUMBER(30),
      SEQ_NBR              NUMBER(30),
      REF_TRANSACTION_ID   VARCHAR2(2000),
      REF_SEQ_NBR          VARCHAR2(2000),
      LOCATION             VARCHAR2(2000),
      ITEM_ALTERNATE_CODE  VARCHAR2(2000),
      ITEM_PART_A          VARCHAR2(2000),
      ITEM_PART_B          VARCHAR2(2000),
      ITEM_PART_C          VARCHAR2(2000),
      ITEM_PART_D          VARCHAR2(2000),
      ITEM_PART_E          VARCHAR2(2000),
      ITEM_PART_F          VARCHAR2(2000),
      INVN_ATTR_A          VARCHAR2(2000),
      INVN_ATTR_B          VARCHAR2(2000),
      INVN_ATTR_C          VARCHAR2(2000),
      EXPIRY_DATE          DATE,
      BATCH_NBR            VARCHAR2(2000),
      SERIAL_NBR           VARCHAR2(2000),
      QUANTITY             NUMBER(30),
      POS_USER             VARCHAR2(240),
      INVN_ATTR_D          VARCHAR2(2000),
      INVN_ATTR_E          VARCHAR2(2000),
      INVN_ATTR_F          VARCHAR2(2000),
      INVN_ATTR_G          VARCHAR2(2000),
      STATUS               VARCHAR2(50) ,
      RECORD_ID            NUMBER(30) ,
      BATCH_ID             NUMBER(30) ,
      ERROR_CODE           VARCHAR2(1000) ,
      ERROR_MESSAGE        VARCHAR2(4000) ,
      CREATED_BY           VARCHAR2(240) ,
      CREATION_DATE        TIMESTAMP(6) ,
      LAST_UPDATE_DATE     TIMESTAMP(6) ,
      LAST_UPDATED_BY      VARCHAR2(240) ,
      LAST_UPDATE_LOGIN    VARCHAR2(240)
    )
    PARTITION BY LIST
    (
      STATUS
    )
    (
      PARTITION New VALUES
      (
        'New'
      )
      ,
      PARTITION Success VALUES
      (
        'Success'
      )
      ,
      PARTITION Error VALUES
      (
        'Error'
      )
    );