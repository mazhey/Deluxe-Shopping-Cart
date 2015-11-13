Table1: PRODUCTS
COLUMN_NAME              DATA_TYPE          NULLABLE   COLUMN_ID
PRODUCT_ID	             NUMBER	              No		1	
PRODUCT_NAME	        VARCHAR2(50 BYTE)	 Yes		2	
PRODUCT_DATE	        VARCHAR2(50 BYTE)	 Yes		3	
PRODUCT_DESCRIPTION 	VARCHAR2(50 BYTE)	 Yes		4	
PRODUCT_PRICE	         NUMBER	             Yes		5	





Table2: SHOPPINGUSER
COLUMN_NAME              DATA_TYPE          NULLABLE   COLUMN_ID
USER_ID	                  NUMBER	            No		1
USERNAME	              VARCHAR2(50 BYTE)	    Yes		2
FULLNAME	              VARCHAR2(50 BYTE)	    Yes		3
PASSWORD	              VARCHAR2(50 BYTE)	    Yes		4



Table3: LINEITEMS
COLUMN_NAME              DATA_TYPE          NULLABLE   COLUMN_ID
LINEITEM_ID	             NUMBER(38,0)	        No		1
PRODUCT_DATE	         VARCHAR2(50 BYTE)	    No		2
PRODUCT_ID	             NUMBER(38,0)	        No		3
PRODUCT_NAME	         VARCHAR2(50 BYTE)	   Yes		4
PRODUCT_PRICE	         NUMBER	               Yes		5
PRODUCT_QUANTITY	     NUMBER(38,0)	       Yes		6
PRODUCT_UNITPRICE	     NUMBER                Yes		7
USER_ID	                 NUMBER(38,0)	        No		8
