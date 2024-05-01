--------------------------------------------------------
--  파일이 생성됨 - 화요일-4월-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE_DATA4_TBL
--------------------------------------------------------

  CREATE TABLE "PROJECT"."RECIPE_DATA4_TBL" 
   (	"NUM" NUMBER, 
	"IMG" VARCHAR2(1000 BYTE), 
	"NAME" VARCHAR2(1000 BYTE), 
	"INGREDIENTS" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PROJECT.RECIPE_DATA4_TBL
SET DEFINE OFF;
Insert into PROJECT.RECIPE_DATA4_TBL (NUM,IMG,NAME,INGREDIENTS) values (1369,'https://recipe1.ezmember.co.kr/cache/recipe/2016/10/24/a7c963c70aaed2ed6f1ff548d55c6c8f1.jpg','연근두부 샐러드','두부,연근,양상추,파프리카,토마토,포도씨유,마요네즈,두유,식초,맛술,꿀,식초,설탕,레몬즙');
Insert into PROJECT.RECIPE_DATA4_TBL (NUM,IMG,NAME,INGREDIENTS) values (1370,'https://recipe1.ezmember.co.kr/cache/recipe/2018/08/20/548cb15a7517ce3fb07e237c92c2a4761.jpg','가지볶음','가지,볶은소금,들기름,다진마늘,간장,올리고당,물,대파,통깨');
Insert into PROJECT.RECIPE_DATA4_TBL (NUM,IMG,NAME,INGREDIENTS) values (1371,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/26/0839f2054ddd6ccd646bb2bf11d0bb8c1.jpg','마 된장찌개','다시마,표고버섯,마,양파,애호박,무,두부,간마늘,된장');
Insert into PROJECT.RECIPE_DATA4_TBL (NUM,IMG,NAME,INGREDIENTS) values (1373,'https://recipe1.ezmember.co.kr/cache/recipe/2016/08/07/488dca3e4a54092af30d648ada10bc6d1.jpg','방울양배추찜','방울양배추,멸치육수,맛간장,사과식초,설탕,다진잔파,고운고춧가루,양파즙,마늘즙,참기름,올리브오일,통깨');
Insert into PROJECT.RECIPE_DATA4_TBL (NUM,IMG,NAME,INGREDIENTS) values (1374,'https://recipe1.ezmember.co.kr/cache/recipe/2019/10/23/e7c0458d72956d728c8579ee686354701.jpg','우엉 샐러드','우엉,식초,진간장,들기름,들깨가루');
Insert into PROJECT.RECIPE_DATA4_TBL (NUM,IMG,NAME,INGREDIENTS) values (1375,'https://recipe1.ezmember.co.kr/cache/recipe/2022/07/08/8217bdbd0b9256a8207c9eb3135d143f1.jpg','양파볶음','양파,파프리카,청양초,마늘,소금,후추,식용유,깨소금');
Insert into PROJECT.RECIPE_DATA4_TBL (NUM,IMG,NAME,INGREDIENTS) values (1376,'https://recipe1.ezmember.co.kr/cache/recipe/2019/10/06/b6d6cfc4948ccd3cbf8c1749329260281.jpg','튼튼밥','밥,콩기름');
Insert into PROJECT.RECIPE_DATA4_TBL (NUM,IMG,NAME,INGREDIENTS) values (1377,'https://recipe1.ezmember.co.kr/cache/recipe/2022/05/25/7e370bd09acda160a1bfa3611bc537bd1.jpg','저항성전분밥','흰쌀,잡곡,식물성오일');
--------------------------------------------------------
--  DDL for Index RECIPE_DATA4_TBL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."RECIPE_DATA4_TBL_PK" ON "PROJECT"."RECIPE_DATA4_TBL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_DATA4_TBL
--------------------------------------------------------

  ALTER TABLE "PROJECT"."RECIPE_DATA4_TBL" ADD CONSTRAINT "RECIPE_DATA4_TBL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT"."RECIPE_DATA4_TBL" MODIFY ("NUM" NOT NULL ENABLE);
