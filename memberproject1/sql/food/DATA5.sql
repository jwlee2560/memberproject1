--------------------------------------------------------
--  파일이 생성됨 - 화요일-4월-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE_DATA5_TBL
--------------------------------------------------------

  CREATE TABLE "PROJECT"."RECIPE_DATA5_TBL" 
   (	"NUM" NUMBER, 
	"IMG" VARCHAR2(1000 BYTE), 
	"NAME" VARCHAR2(1000 BYTE), 
	"INGREDIENTS" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PROJECT.RECIPE_DATA5_TBL
SET DEFINE OFF;
Insert into PROJECT.RECIPE_DATA5_TBL (NUM,IMG,NAME,INGREDIENTS) values (2469,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/19/dd361e125afa5f2dfa84d092c0c172ef1.jpg','돼지감자밥','돼지감자,쌀');
Insert into PROJECT.RECIPE_DATA5_TBL (NUM,IMG,NAME,INGREDIENTS) values (2463,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/12/e174f9ff098dba3fa27f7ab5d66eede41.jpg','묵잡채','말린도토리묵,양파,당근,대파,다진마늘,간장,미림,표고,소금,참기름,식용유');
Insert into PROJECT.RECIPE_DATA5_TBL (NUM,IMG,NAME,INGREDIENTS) values (2465,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/15/36b4a1a21446a514a392689fdd24e9a71.jpg','연어덮밥','연어,간장,설탕,양파,파,물,생강,고추냉이,식초');
Insert into PROJECT.RECIPE_DATA5_TBL (NUM,IMG,NAME,INGREDIENTS) values (2452,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/26/970485b4dcade01a856603573f6de4c21.jpg','청국장','청국장,된장,배추김치,두부,표고버섯,양파,대파,청양고추,마늘,고춧가루,멸치,다시마,양파껍질');
Insert into PROJECT.RECIPE_DATA5_TBL (NUM,IMG,NAME,INGREDIENTS) values (2453,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/26/fe3935de2a4cb8b424aee16a224216d51.jpg','도토리부추전','도토리가루,부추,달래,죽염,물,진간장,물,들기름,깨');
Insert into PROJECT.RECIPE_DATA5_TBL (NUM,IMG,NAME,INGREDIENTS) values (2445,'https://recipe1.ezmember.co.kr/cache/recipe/2023/11/10/d698804b8c3a3bb6f15bc57cbe1a17c61.jpg','매콤팽이버섯덮밥','팽이버섯,베이컨,양파,밥,고춧가루,간장,알룰로스,다진마늘,쪽파,깨');
Insert into PROJECT.RECIPE_DATA5_TBL (NUM,IMG,NAME,INGREDIENTS) values (2447,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/24/fc24771159c7e83357899411456036601.jpg','케일스프','간마늘,양파,당근,샐러리,토마토,케일,올리브오일');
Insert into PROJECT.RECIPE_DATA5_TBL (NUM,IMG,NAME,INGREDIENTS) values (2449,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/16/594518dcd71eeb2c53a63cad128435071.jpg','브로콜리 두부무침','브로콜리,두부,소금,참기름,통깨');
--------------------------------------------------------
--  DDL for Index RECIPE_DATA5_TBL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."RECIPE_DATA5_TBL_PK" ON "PROJECT"."RECIPE_DATA5_TBL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_DATA5_TBL
--------------------------------------------------------

  ALTER TABLE "PROJECT"."RECIPE_DATA5_TBL" ADD CONSTRAINT "RECIPE_DATA5_TBL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT"."RECIPE_DATA5_TBL" MODIFY ("NUM" NOT NULL ENABLE);
