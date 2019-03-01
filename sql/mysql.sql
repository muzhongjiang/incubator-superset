#当前操作系统一定要有mysql lib
DROP DATABASE IF EXISTS superset;
CREATE DATABASE superset CHARACTER SET utf8;

create user 'superset'@'%' identified by 'superset';
grant  all  on  superset.*  to  'superset'@'%'  identified  by  'superset';
grant  all  on  superset.*  to  'superset'@'localhost'  identified  by  'superset';
#grant  all  on  superset.*  to  'superset'@'tencent32'  identified  by  'superset';
FLUSH  PRIVILEGES;        #刷新