--------------------------------------------------------
--  파일이 생성됨 - 화요일-4월-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE_DATA2_TBL
--------------------------------------------------------

  CREATE TABLE "PROJECT"."RECIPE_DATA2_TBL" 
   (	"NUM" NUMBER, 
	"IMG" VARCHAR2(1000 BYTE), 
	"NAME" VARCHAR2(1000 BYTE), 
	"INGREDIENTS" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PROJECT.RECIPE_DATA2_TBL
SET DEFINE OFF;
Insert into PROJECT.RECIPE_DATA2_TBL (NUM,IMG,NAME,INGREDIENTS) values (2510,'https://recipe1.ezmember.co.kr/cache/recipe/2019/09/15/3a268f07129f08dc14956f51ac52c6671.jpg','해파리냉채','오이,당근,맛살,배,달걀,마늘,연겨자,설탕,식초,마요네즈,레몬,올리브,참기름,설탕,식초,소금');
Insert into PROJECT.RECIPE_DATA2_TBL (NUM,IMG,NAME,INGREDIENTS) values (2512,'https://recipe1.ezmember.co.kr/cache/recipe/2019/08/21/e9f2dce320fcc91e63dc6debf919e6d31.jpg','오이냉국','오이,집간장,다진마늘,고추가루,깨,참기름,생수');
Insert into PROJECT.RECIPE_DATA2_TBL (NUM,IMG,NAME,INGREDIENTS) values (2487,'https://recipe1.ezmember.co.kr/cache/recipe/2019/08/12/ad0cc122a0e587c0442729c33562468b1.jpg','카레 덮밥','닭봉,양파,감자,카레가루,물,밥,우유,올리브유,무염버터');
Insert into PROJECT.RECIPE_DATA2_TBL (NUM,IMG,NAME,INGREDIENTS) values (2490,'https://recipe1.ezmember.co.kr/cache/recipe/2019/08/23/ef013c95c851f5ef10616d46ebc1a6281.jpg','가지잡채','가지,당면사리,당근,양파,부추,돼지고기,간장,후추가루,다진마늘,설탕,간장,설탕,올리브유,참기름,통깨');
Insert into PROJECT.RECIPE_DATA2_TBL (NUM,IMG,NAME,INGREDIENTS) values (2491,'https://recipe1.ezmember.co.kr/cache/recipe/2019/08/26/681399107e03ddc6f88a4e04ed0fa5901.jpg','톳두부무침','톳,두부,다진마늘,소금,참기름,통깨');
Insert into PROJECT.RECIPE_DATA2_TBL (NUM,IMG,NAME,INGREDIENTS) values (2492,'https://recipe1.ezmember.co.kr/cache/recipe/2019/08/25/41063c687069b2c3c92dabc9f993a1e91.jpg','멸치볶음','깐마늘,식용유,진간장,올리고당,흑임자,통깨');
Insert into PROJECT.RECIPE_DATA2_TBL (NUM,IMG,NAME,INGREDIENTS) values (2494,'https://recipe1.ezmember.co.kr/cache/recipe/2019/08/11/a52a564b8f7e1e7a8c457fb75e6d12b91.jpg','차돌박이우동볶음','우동사리,차돌박이,파프리카,피망,통마늘,간장,설탕,참기름');
Insert into PROJECT.RECIPE_DATA2_TBL (NUM,IMG,NAME,INGREDIENTS) values (2495,'https://recipe1.ezmember.co.kr/cache/recipe/2019/08/23/b8cb787986da7f887f6d45936ccb33f21.jpg','묵은지콩비지찌개','묵은지,콩물,대파,다진마늘,들기름,물');
--------------------------------------------------------
--  DDL for Index RECIPE_DATA2_TBL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."RECIPE_DATA2_TBL_PK" ON "PROJECT"."RECIPE_DATA2_TBL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_DATA2_TBL
--------------------------------------------------------

  ALTER TABLE "PROJECT"."RECIPE_DATA2_TBL" ADD CONSTRAINT "RECIPE_DATA2_TBL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT"."RECIPE_DATA2_TBL" MODIFY ("NUM" NOT NULL ENABLE);
