SELECT SYS_CONNECT_BY_PATH(NULL, '* ') FROM DUAL CONNECT BY ROWNUM<=20 ORDER BY 1;