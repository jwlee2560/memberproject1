-- 프로젝트 전용 계정 생성
create user bbaroni identified by bbaroni;

grant connect, resource, create view to bbaroni;