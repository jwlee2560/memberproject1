create table NUTRI_STD_TBL (
	num number(2) primary key,
	gender nchar(1) not null,
	age nvarchar2(10) not null,
	energy number(4) default 0,
	carbohydrate number(3) default 0,
	protein number(2) default 0,
	sugar nvarchar2(10),
	natrium number(4) default 0,
	cholesterol number(3),
	fat nvarchar2(10),
	fatty_acid number(2),
	trans_fatty_acid number(2)
);

comment ON COLUMN nutri_std_tbl.NUM is '기본키';
comment ON COLUMN nutri_std_tbl.GENDER is '성별';
comment ON COLUMN nutri_std_tbl.AGE is '연령';
comment ON COLUMN nutri_std_tbl.ENERGY is '에너지(kcal/일)';
comment ON COLUMN nutri_std_tbl.CARBOHYDRATE is '탄수화물(g/일)';
comment ON COLUMN nutri_std_tbl.PROTEIN is '단백질(g/일)';
comment ON COLUMN nutri_std_tbl.SUGAR is '당류(%) : 총에너지 대비';
comment ON COLUMN nutri_std_tbl.NATRIUM is '나트륨(mg)';
comment ON COLUMN nutri_std_tbl.CHOLESTEROL is '콜레스테롤(mg) : 지질(총계)';
comment ON COLUMN nutri_std_tbl.FAT is '지방(%) : 지질';
comment ON COLUMN nutri_std_tbl.FATTY_ACID is '포화지방산(%) : 지질';
comment ON COLUMN nutri_std_tbl.TRANS_FATTY_ACID is '트랜스지방산(%) : 지질';


CREATE SEQUENCE NUTRI_STD_SEQ
MINVALUE 1 
MAXVALUE 9999999999 
INCREMENT BY 1
START WITH 1
NOCYCLE;
