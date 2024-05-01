--------------------------------------------------------
--  파일이 생성됨 - 화요일-4월-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE_DATA3_TBL
--------------------------------------------------------

  CREATE TABLE "PROJECT"."RECIPE_DATA3_TBL" 
   (	"NUM" NUMBER, 
	"IMG" VARCHAR2(1000 BYTE), 
	"NAME" VARCHAR2(1000 BYTE), 
	"INGREDIENTS" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PROJECT.RECIPE_DATA3_TBL
SET DEFINE OFF;
Insert into PROJECT.RECIPE_DATA3_TBL (NUM,IMG,NAME,INGREDIENTS) values (1418,'https://recipe1.ezmember.co.kr/cache/recipe/2015/12/09/26963c8300d3160b630a5cffb61146091.jpg','초석잠조림','초석잠,청양고추,간장,설탕');
Insert into PROJECT.RECIPE_DATA3_TBL (NUM,IMG,NAME,INGREDIENTS) values (1419,'https://recipe1.ezmember.co.kr/cache/recipe/2017/08/21/8e60d4a5508393c72dd9ab561ea6af131.jpg','건뽕잎 나물 볶음','국간장,다진마늘,깨,참기름');
Insert into PROJECT.RECIPE_DATA3_TBL (NUM,IMG,NAME,INGREDIENTS) values (1421,'https://recipe1.ezmember.co.kr/cache/recipe/2015/08/28/f90634d4e6569b8c21010993afab42bc1.jpg','들깻잎순볶음','깻잎,양파,대파,다진마늘,국간장,쌀뜨물,들기름,천일염,통깨');
Insert into PROJECT.RECIPE_DATA3_TBL (NUM,IMG,NAME,INGREDIENTS) values (1424,'https://recipe1.ezmember.co.kr/cache/recipe/2015/07/28/fa6eb16d17b60cdf373904a746bde99c1.jpg','고구마 카레','고구마,돼지고기,사과,호박,피망,당근,카레가루,대파,콩기름');
Insert into PROJECT.RECIPE_DATA3_TBL (NUM,IMG,NAME,INGREDIENTS) values (1430,'https://recipe1.ezmember.co.kr/cache/recipe/2021/01/14/5406a427e49dfbdbe8468e4601d5a6d81.jpg','굴전','굴,부침가루,강황가루,고추,계란,식용유,진간장,고춧가루,통깨,참기름,파');
Insert into PROJECT.RECIPE_DATA3_TBL (NUM,IMG,NAME,INGREDIENTS) values (1433,'https://recipe1.ezmember.co.kr/cache/recipe/2015/10/07/1c65c0abe1e0c1139de3400668ac946c1.jpg','고등어데리야끼조림','고등어,청주,튀김가루,간장,물엿,생강술,표고버섯,대파');
Insert into PROJECT.RECIPE_DATA3_TBL (NUM,IMG,NAME,INGREDIENTS) values (1434,'https://recipe1.ezmember.co.kr/cache/recipe/2015/10/27/efec2004bd8ea3ed8f7f184ee47061711.jpg','멸치매운볶음','잔멸치,잣,다진마늘,다진파,식용유,통깨,고춧가루,고추장,양조간장,올리고당,청주');
Insert into PROJECT.RECIPE_DATA3_TBL (NUM,IMG,NAME,INGREDIENTS) values (1435,'https://recipe1.ezmember.co.kr/cache/recipe/2015/06/10/63001f5c1576ef7edc2a94d5dda93ba81.jpg','삼치매실된장구이','삼치,재래식된장,매실원액,간마늘,마요네즈');
--------------------------------------------------------
--  DDL for Index RECIPE_DATA3_TBL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."RECIPE_DATA3_TBL_PK" ON "PROJECT"."RECIPE_DATA3_TBL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_DATA3_TBL
--------------------------------------------------------

  ALTER TABLE "PROJECT"."RECIPE_DATA3_TBL" ADD CONSTRAINT "RECIPE_DATA3_TBL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT"."RECIPE_DATA3_TBL" MODIFY ("NUM" NOT NULL ENABLE);
