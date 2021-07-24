--------------------------------------------------------
--  File created - Sunday-March-29-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence COLLEGE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT"."COLLEGE_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 521 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COORD_ID
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT"."COORD_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EVENT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT"."EVENT_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 621 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATION_ID
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT"."LOCATION_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 421 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REG_ID
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT"."REG_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 321 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT"."USER_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table APP_USER
--------------------------------------------------------

  CREATE TABLE "PROJECT"."APP_USER" 
   (	"USER_ID" NUMBER(4,0), 
	"EMAIL_ID" VARCHAR2(40 BYTE), 
	"PASSWORD" VARCHAR2(40 BYTE), 
	"COLLEGE_NAME" VARCHAR2(40 BYTE), 
	"CURRENT_SEMESTER" NUMBER(4,0), 
	"PHONE_NUMBER" NUMBER(10,0), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"COLLEGE_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COLLEGE
--------------------------------------------------------

  CREATE TABLE "PROJECT"."COLLEGE" 
   (	"COLLEGE_ID" NUMBER(4,0), 
	"COLLEGE_NAME" VARCHAR2(10 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CO_ORDINATOR
--------------------------------------------------------

  CREATE TABLE "PROJECT"."CO_ORDINATOR" 
   (	"COORDINATOR_ID" NUMBER(4,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"EMAIL_ID" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(40 BYTE), 
	"CONTACT_NUMBER" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "PROJECT"."EVENT" 
   (	"EVENT_ID" NUMBER(4,0), 
	"EVENT_NAME" VARCHAR2(40 BYTE), 
	"CATEGORY" VARCHAR2(40 BYTE), 
	"NO_OF_PARTICIPANT" NUMBER(2,0), 
	"FEE_NATIVECLG" NUMBER(6,0), 
	"FEE_OTHERCLG" NUMBER(6,0), 
	"WINNER_ID" NUMBER(6,0), 
	"RUNNER_ID" NUMBER(6,0), 
	"EVENT_STATUS" VARCHAR2(20 BYTE), 
	"TIMING" VARCHAR2(15 BYTE), 
	"EVENT_DATE" DATE, 
	"PRIZE_POOL" VARCHAR2(20 BYTE), 
	"LOCATION_ID" NUMBER(*,0), 
	"COORDINATOR_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOCATION
--------------------------------------------------------

  CREATE TABLE "PROJECT"."LOCATION" 
   (	"LOCATION_ID" NUMBER(4,0), 
	"BUILDING" VARCHAR2(20 BYTE), 
	"ROOM_NO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "PROJECT"."PAYMENT" 
   (	"PAYMENT_ID" NUMBER(4,0), 
	"AMOUNT" NUMBER(7,0), 
	"USER_ID" NUMBER(4,0), 
	"EVENT_ID" NUMBER(4,0), 
	"DOP" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REGISTRATION
--------------------------------------------------------

  CREATE TABLE "PROJECT"."REGISTRATION" 
   (	"REG_ID" NUMBER(4,0), 
	"EVENT_ID" NUMBER(4,0), 
	"PAYMENT_ID" NUMBER(4,0), 
	"USER_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View EVENTS_FOR_USER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PROJECT"."EVENTS_FOR_USER" ("EVENT_ID", "EVENT_NAME", "CATEGORY", "EVENT_DATE", "TIMING") AS 
  select event_id,event_name,category,event_date,timing from event
;
--------------------------------------------------------
--  DDL for View EVENT_DEL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PROJECT"."EVENT_DEL" ("EVENT_ID", "EVENT_NAME", "CATEGORY", "NO_OF_PARTICIPANT", "FEE_NATIVECLG", "FEE_OTHERCLG", "WINNER_ID", "RUNNER_ID", "EVENT_STATUS", "TIMING", "EVENT_DATE", "PRIZE_POOL", "LOCATION_ID", "COORDINATOR_ID") AS 
  select "EVENT_ID","EVENT_NAME","CATEGORY","NO_OF_PARTICIPANT","FEE_NATIVECLG","FEE_OTHERCLG","WINNER_ID","RUNNER_ID","EVENT_STATUS","TIMING","EVENT_DATE","PRIZE_POOL","LOCATION_ID","COORDINATOR_ID" from event
;
--------------------------------------------------------
--  DDL for View EVENT_LOCATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PROJECT"."EVENT_LOCATION" ("EVENT_NAME", "BUILDING", "ROOM_NO") AS 
  select s.event_name,ss.building,ss.room_no from event  s natural join location  ss
;
--------------------------------------------------------
--  DDL for View EVENT_LOCATION_DATE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PROJECT"."EVENT_LOCATION_DATE" ("EVENT_NAME", "EVENT_DATE", "TIMING", "BUILDING", "ROOM_NO") AS 
  select s.event_name,s.event_date,s.timing,ss.building,ss.room_no from event  s natural join location  ss
;
REM INSERTING into PROJECT.APP_USER
SET DEFINE OFF;
Insert into PROJECT.APP_USER (USER_ID,EMAIL_ID,PASSWORD,COLLEGE_NAME,CURRENT_SEMESTER,PHONE_NUMBER,USER_NAME,COLLEGE_ID) values (101,'good@mail.com','bhsbj','CEG',3,9987898348,'Pallavan',501);
Insert into PROJECT.APP_USER (USER_ID,EMAIL_ID,PASSWORD,COLLEGE_NAME,CURRENT_SEMESTER,PHONE_NUMBER,USER_NAME,COLLEGE_ID) values (102,'hbcw@hsds.com','sjns','MIT',5,8247924329,'Madhavan',502);
Insert into PROJECT.APP_USER (USER_ID,EMAIL_ID,PASSWORD,COLLEGE_NAME,CURRENT_SEMESTER,PHONE_NUMBER,USER_NAME,COLLEGE_ID) values (103,'fhfbe@ehbfew.com','bewcbewk213','SSN',5,2734847234,'Roman',504);
Insert into PROJECT.APP_USER (USER_ID,EMAIL_ID,PASSWORD,COLLEGE_NAME,CURRENT_SEMESTER,PHONE_NUMBER,USER_NAME,COLLEGE_ID) values (104,'whdewe@kjjbdw.com','ewgdwey','IIT',7,9374913481,'Undertaker',505);
Insert into PROJECT.APP_USER (USER_ID,EMAIL_ID,PASSWORD,COLLEGE_NAME,CURRENT_SEMESTER,PHONE_NUMBER,USER_NAME,COLLEGE_ID) values (105,'fwjefw@gmail.com','ugwe324','PSG',3,8736284424,'Batista',503);
REM INSERTING into PROJECT.COLLEGE
SET DEFINE OFF;
Insert into PROJECT.COLLEGE (COLLEGE_ID,COLLEGE_NAME,ADDRESS) values (501,'CEG','Guindy');
Insert into PROJECT.COLLEGE (COLLEGE_ID,COLLEGE_NAME,ADDRESS) values (502,'MIT','Chromepet');
Insert into PROJECT.COLLEGE (COLLEGE_ID,COLLEGE_NAME,ADDRESS) values (503,'PSG','Coimbatore');
Insert into PROJECT.COLLEGE (COLLEGE_ID,COLLEGE_NAME,ADDRESS) values (504,'SSN','Chennai');
Insert into PROJECT.COLLEGE (COLLEGE_ID,COLLEGE_NAME,ADDRESS) values (505,'IIT','Madras');
REM INSERTING into PROJECT.CO_ORDINATOR
SET DEFINE OFF;
Insert into PROJECT.CO_ORDINATOR (COORDINATOR_ID,NAME,EMAIL_ID,PASSWORD,CONTACT_NUMBER) values (201,'Baktha','baktha@gmail.com','baktha123',9000000000);
Insert into PROJECT.CO_ORDINATOR (COORDINATOR_ID,NAME,EMAIL_ID,PASSWORD,CONTACT_NUMBER) values (202,'Lucha','lucha@gmail.com','lucha123',8000000000);
Insert into PROJECT.CO_ORDINATOR (COORDINATOR_ID,NAME,EMAIL_ID,PASSWORD,CONTACT_NUMBER) values (203,'Ucha','ucha@hotmail.com','ucha123',7000000000);
Insert into PROJECT.CO_ORDINATOR (COORDINATOR_ID,NAME,EMAIL_ID,PASSWORD,CONTACT_NUMBER) values (204,'Kacha','kacha@gmail.com','kacha123',6000000000);
Insert into PROJECT.CO_ORDINATOR (COORDINATOR_ID,NAME,EMAIL_ID,PASSWORD,CONTACT_NUMBER) values (205,'Bacha','bacha@yahoo.com','bacha123',5000000000);
REM INSERTING into PROJECT.EVENT
SET DEFINE OFF;
Insert into PROJECT.EVENT (EVENT_ID,EVENT_NAME,CATEGORY,NO_OF_PARTICIPANT,FEE_NATIVECLG,FEE_OTHERCLG,WINNER_ID,RUNNER_ID,EVENT_STATUS,TIMING,EVENT_DATE,PRIZE_POOL,LOCATION_ID,COORDINATOR_ID) values (601,'Ninja Coding','Coding',15,100,200,2004,2001,'completed','14:00 to 16:00',to_date('01-02-20','DD-MM-RR'),'400',401,203);
Insert into PROJECT.EVENT (EVENT_ID,EVENT_NAME,CATEGORY,NO_OF_PARTICIPANT,FEE_NATIVECLG,FEE_OTHERCLG,WINNER_ID,RUNNER_ID,EVENT_STATUS,TIMING,EVENT_DATE,PRIZE_POOL,LOCATION_ID,COORDINATOR_ID) values (602,'OSPC','Coding',20,200,400,2003,2004,'completed','15:00 to 16:00',to_date('10-02-20','DD-MM-RR'),'5000',402,205);
Insert into PROJECT.EVENT (EVENT_ID,EVENT_NAME,CATEGORY,NO_OF_PARTICIPANT,FEE_NATIVECLG,FEE_OTHERCLG,WINNER_ID,RUNNER_ID,EVENT_STATUS,TIMING,EVENT_DATE,PRIZE_POOL,LOCATION_ID,COORDINATOR_ID) values (603,'Circuit Craze','Electronics',50,50,100,2010,2009,'completed','10:00 to 14:00',to_date('07-02-20','DD-MM-RR'),'500',403,201);
Insert into PROJECT.EVENT (EVENT_ID,EVENT_NAME,CATEGORY,NO_OF_PARTICIPANT,FEE_NATIVECLG,FEE_OTHERCLG,WINNER_ID,RUNNER_ID,EVENT_STATUS,TIMING,EVENT_DATE,PRIZE_POOL,LOCATION_ID,COORDINATOR_ID) values (604,'Chaos Theory','Management',20,100,300,2003,2001,'completed','11:00 to 19:00',to_date('10-02-20','DD-MM-RR'),'2000',403,202);
Insert into PROJECT.EVENT (EVENT_ID,EVENT_NAME,CATEGORY,NO_OF_PARTICIPANT,FEE_NATIVECLG,FEE_OTHERCLG,WINNER_ID,RUNNER_ID,EVENT_STATUS,TIMING,EVENT_DATE,PRIZE_POOL,LOCATION_ID,COORDINATOR_ID) values (605,'God Speed','Flagship',50,10000,30000,2001,2003,'completed','12:00 to 18:00',to_date('10-02-20','DD-MM-RR'),'3000',405,204);
REM INSERTING into PROJECT.LOCATION
SET DEFINE OFF;
Insert into PROJECT.LOCATION (LOCATION_ID,BUILDING,ROOM_NO) values (401,'KP',201);
Insert into PROJECT.LOCATION (LOCATION_ID,BUILDING,ROOM_NO) values (402,'KP',202);
Insert into PROJECT.LOCATION (LOCATION_ID,BUILDING,ROOM_NO) values (403,'KP',203);
Insert into PROJECT.LOCATION (LOCATION_ID,BUILDING,ROOM_NO) values (404,'Red Building',71);
Insert into PROJECT.LOCATION (LOCATION_ID,BUILDING,ROOM_NO) values (405,'Red Building',75);
REM INSERTING into PROJECT.PAYMENT
SET DEFINE OFF;
Insert into PROJECT.PAYMENT (PAYMENT_ID,AMOUNT,USER_ID,EVENT_ID,DOP) values (701,400,103,602,to_date('12-01-20','DD-MM-RR'));
Insert into PROJECT.PAYMENT (PAYMENT_ID,AMOUNT,USER_ID,EVENT_ID,DOP) values (702,500,105,602,to_date('10-01-20','DD-MM-RR'));
Insert into PROJECT.PAYMENT (PAYMENT_ID,AMOUNT,USER_ID,EVENT_ID,DOP) values (703,300,104,603,to_date('06-01-20','DD-MM-RR'));
Insert into PROJECT.PAYMENT (PAYMENT_ID,AMOUNT,USER_ID,EVENT_ID,DOP) values (704,200,101,605,to_date('08-01-20','DD-MM-RR'));
Insert into PROJECT.PAYMENT (PAYMENT_ID,AMOUNT,USER_ID,EVENT_ID,DOP) values (705,342,102,601,to_date('17-01-20','DD-MM-RR'));
REM INSERTING into PROJECT.REGISTRATION
SET DEFINE OFF;
Insert into PROJECT.REGISTRATION (REG_ID,EVENT_ID,PAYMENT_ID,USER_ID) values (301,601,701,101);
Insert into PROJECT.REGISTRATION (REG_ID,EVENT_ID,PAYMENT_ID,USER_ID) values (302,602,702,102);
Insert into PROJECT.REGISTRATION (REG_ID,EVENT_ID,PAYMENT_ID,USER_ID) values (303,603,703,103);
Insert into PROJECT.REGISTRATION (REG_ID,EVENT_ID,PAYMENT_ID,USER_ID) values (304,604,704,104);
Insert into PROJECT.REGISTRATION (REG_ID,EVENT_ID,PAYMENT_ID,USER_ID) values (305,605,705,105);
--------------------------------------------------------
--  DDL for Index SYS_C0012211
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0012211" ON "PROJECT"."APP_USER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012185
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0012185" ON "PROJECT"."COLLEGE" ("COLLEGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012204
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0012204" ON "PROJECT"."CO_ORDINATOR" ("COORDINATOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012197
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0012197" ON "PROJECT"."EVENT" ("EVENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012181
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0012181" ON "PROJECT"."LOCATION" ("LOCATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012216
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0012216" ON "PROJECT"."PAYMENT" ("PAYMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012223
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."SYS_C0012223" ON "PROJECT"."REGISTRATION" ("REG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger USR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT"."USR_ID" 
BEFORE INSERT ON app_user
FOR EACH ROW

BEGIN
  SELECT user_id.NEXTVAL
  INTO   :new.user_id
  FROM   dual;
END;
/
ALTER TRIGGER "PROJECT"."USR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CLG_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT"."CLG_ID" 
BEFORE INSERT ON college
FOR EACH ROW

BEGIN
  SELECT college_id.NEXTVAL
  INTO   :new.college_id
  FROM   dual;
END;
/
ALTER TRIGGER "PROJECT"."CLG_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger COORD_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT"."COORD_ID" 
BEFORE INSERT ON co_ordinator
FOR EACH ROW

BEGIN
  SELECT coord_id.NEXTVAL
  INTO   :new.coordinator_id
  FROM   dual;
END;
/
ALTER TRIGGER "PROJECT"."COORD_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EVENT_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT"."EVENT_ID" 
BEFORE INSERT ON event
FOR EACH ROW

BEGIN
  SELECT event_id.NEXTVAL
  INTO   :new.event_id
  FROM   dual;
END;
/
ALTER TRIGGER "PROJECT"."EVENT_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DEL
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT"."DEL" 
before update on event
for each row
begin
update table set event_status='aborted' where event_id=601;
end;
/
ALTER TRIGGER "PROJECT"."DEL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LOCS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT"."LOCS_ID" 
BEFORE INSERT ON location
FOR EACH ROW

BEGIN
  SELECT location_id.NEXTVAL
  INTO   :new.location_id
  FROM   dual;
END;
/
ALTER TRIGGER "PROJECT"."LOCS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REG_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PROJECT"."REG_ID" 
BEFORE INSERT ON registration
FOR EACH ROW

BEGIN
  SELECT reg_id.NEXTVAL
  INTO   :new.reg_id
  FROM   dual;
END;
/
ALTER TRIGGER "PROJECT"."REG_ID" ENABLE;
--------------------------------------------------------
--  Constraints for Table APP_USER
--------------------------------------------------------

  ALTER TABLE "PROJECT"."APP_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."APP_USER" MODIFY ("EMAIL_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."APP_USER" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."APP_USER" MODIFY ("COLLEGE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."APP_USER" MODIFY ("CURRENT_SEMESTER" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."APP_USER" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."APP_USER" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "PROJECT"."APP_USER" MODIFY ("USER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COLLEGE
--------------------------------------------------------

  ALTER TABLE "PROJECT"."COLLEGE" MODIFY ("COLLEGE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."COLLEGE" MODIFY ("COLLEGE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."COLLEGE" MODIFY ("ADDRESS" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."COLLEGE" ADD PRIMARY KEY ("COLLEGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CO_ORDINATOR
--------------------------------------------------------

  ALTER TABLE "PROJECT"."CO_ORDINATOR" MODIFY ("COORDINATOR_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."CO_ORDINATOR" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."CO_ORDINATOR" MODIFY ("EMAIL_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."CO_ORDINATOR" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."CO_ORDINATOR" MODIFY ("CONTACT_NUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."CO_ORDINATOR" ADD PRIMARY KEY ("COORDINATOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "PROJECT"."EVENT" MODIFY ("EVENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("EVENT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("CATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("NO_OF_PARTICIPANT" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("FEE_NATIVECLG" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("FEE_OTHERCLG" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("EVENT_STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("TIMING" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("EVENT_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("PRIZE_POOL" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" MODIFY ("LOCATION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."EVENT" ADD PRIMARY KEY ("EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOCATION
--------------------------------------------------------

  ALTER TABLE "PROJECT"."LOCATION" MODIFY ("LOCATION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."LOCATION" MODIFY ("BUILDING" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."LOCATION" MODIFY ("ROOM_NO" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."LOCATION" ADD PRIMARY KEY ("LOCATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PROJECT"."PAYMENT" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."PAYMENT" MODIFY ("AMOUNT" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."PAYMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."PAYMENT" MODIFY ("EVENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."PAYMENT" ADD PRIMARY KEY ("PAYMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REGISTRATION
--------------------------------------------------------

  ALTER TABLE "PROJECT"."REGISTRATION" MODIFY ("REG_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."REGISTRATION" MODIFY ("EVENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."REGISTRATION" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."REGISTRATION" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PROJECT"."REGISTRATION" ADD PRIMARY KEY ("REG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table APP_USER
--------------------------------------------------------

  ALTER TABLE "PROJECT"."APP_USER" ADD FOREIGN KEY ("COLLEGE_ID")
	  REFERENCES "PROJECT"."COLLEGE" ("COLLEGE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "PROJECT"."EVENT" ADD FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "PROJECT"."LOCATION" ("LOCATION_ID") ENABLE;
 
  ALTER TABLE "PROJECT"."EVENT" ADD FOREIGN KEY ("COORDINATOR_ID")
	  REFERENCES "PROJECT"."CO_ORDINATOR" ("COORDINATOR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PROJECT"."PAYMENT" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "PROJECT"."APP_USER" ("USER_ID") ENABLE;
 
  ALTER TABLE "PROJECT"."PAYMENT" ADD FOREIGN KEY ("EVENT_ID")
	  REFERENCES "PROJECT"."EVENT" ("EVENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REGISTRATION
--------------------------------------------------------

  ALTER TABLE "PROJECT"."REGISTRATION" ADD FOREIGN KEY ("EVENT_ID")
	  REFERENCES "PROJECT"."EVENT" ("EVENT_ID") ENABLE;
 
  ALTER TABLE "PROJECT"."REGISTRATION" ADD FOREIGN KEY ("PAYMENT_ID")
	  REFERENCES "PROJECT"."PAYMENT" ("PAYMENT_ID") ENABLE;
 
  ALTER TABLE "PROJECT"."REGISTRATION" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "PROJECT"."APP_USER" ("USER_ID") ENABLE;