--------------------------------------------------------
--  파일이 생성됨 - 화요일-4월-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE_DATA1_TBL
--------------------------------------------------------

  CREATE TABLE "PROJECT"."RECIPE_DATA1_TBL" 
   (	"NUM" NUMBER, 
	"IMG" VARCHAR2(1000 BYTE), 
	"NAME" VARCHAR2(1000 BYTE), 
	"INGREDIENTS" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PROJECT.RECIPE_DATA1_TBL
SET DEFINE OFF;
Insert into PROJECT.RECIPE_DATA1_TBL (NUM,IMG,NAME,INGREDIENTS) values (2434,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/26/0839f2054ddd6ccd646bb2bf11d0bb8c1.jpg','마 된장찌개','다시마, 말린표고버섯,마,작은감자2개부피의양,양파,애호박,무,두부,간마늘,된장');
Insert into PROJECT.RECIPE_DATA1_TBL (NUM,IMG,NAME,INGREDIENTS) values (2437,'https://recipe1.ezmember.co.kr/cache/recipe/2015/06/08/758e1a6f6ea09ce8aa3707183e8342c2.jpg','표고버섯탕','표고버섯,대파,된장,설탕,간장,소금,마늘,양파');
Insert into PROJECT.RECIPE_DATA1_TBL (NUM,IMG,NAME,INGREDIENTS) values (2435,'https://recipe1.ezmember.co.kr/cache/recipe/2015/06/08/360b7e6a9ca3139d9a27264831baa840.jpg','양파김치','양파,부추,고춧가루,설탕,소금');
Insert into PROJECT.RECIPE_DATA1_TBL (NUM,IMG,NAME,INGREDIENTS) values (2423,'https://recipe1.ezmember.co.kr/cache/recipe/2016/06/15/8aa0ae7e4ec143c39e07bde95630d9441.jpg','감자조림','감자,홍고추,간장,설탕,물엿,물');
Insert into PROJECT.RECIPE_DATA1_TBL (NUM,IMG,NAME,INGREDIENTS) values (2421,'https://recipe1.ezmember.co.kr/cache/recipe/2019/09/28/751da1fff0c330f91275f062fc219d841.jpg','숙주 들깨무침','숙주,간장,들깨가루,마늘,깨소금,참기름,부추');
Insert into PROJECT.RECIPE_DATA1_TBL (NUM,IMG,NAME,INGREDIENTS) values (2422,'https://recipe1.ezmember.co.kr/cache/recipe/2018/03/16/bf4c6b618dcedb1a530bd84a4a24f76c1.jpg','아보카도 샐러드','아보카도,적양파,토마토,파,레몬,잣,발사믹식초,바질 잎,파마산치즈가루');
Insert into PROJECT.RECIPE_DATA1_TBL (NUM,IMG,NAME,INGREDIENTS) values (2427,'https://recipe1.ezmember.co.kr/cache/recipe/2020/03/04/aa035f2f11f3041b1d4d361c198c23181.jpg','냉이 미더덕된장국','냉이,두부,미더덕,청양초,된장,육수,마늘');
Insert into PROJECT.RECIPE_DATA1_TBL (NUM,IMG,NAME,INGREDIENTS) values (2430,'https://recipe1.ezmember.co.kr/cache/recipe/2020/10/19/134daafdd4f0ced870a064c80c5707481.jpg','숙주나물황태국','황태채,숙주나물,계란,황태머리,황태껍질,양파,대파,국간장,멸치액젓,들기름,소금,후추');
--------------------------------------------------------
--  DDL for Index RECIPE_DATA1_TBL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT"."RECIPE_DATA1_TBL_PK" ON "PROJECT"."RECIPE_DATA1_TBL" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_DATA1_TBL
--------------------------------------------------------

  ALTER TABLE "PROJECT"."RECIPE_DATA1_TBL" ADD CONSTRAINT "RECIPE_DATA1_TBL_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT"."RECIPE_DATA1_TBL" MODIFY ("NUM" NOT NULL ENABLE);
