INSERT INTO ARTICLE_RST (ARTICLE_TYPE,TYPE_CODE,BUSINESS,EC_ID,ENAME,TITLE,CONTENT,CREATE_TIME,EDIT_TIME)
SELECT ARTICLE_TYPE,TYPE_CODE,BUSINESS,EC_ID,ENAME,TITLE,CONTENT,CREATE_TIME,EDIT_TIME
from ARTICLE_TMP
where create_time like '2017-08-21%';