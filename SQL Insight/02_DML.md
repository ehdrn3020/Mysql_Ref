# DML

## 1.INSERT
```commandline
NSERT INTO PLAYER (
    PLAYER_ID, 
    PLAYER_NAME, 
    TEAM_ID, 
    POSITION, 
    HEIGHT, 
    WEIGHT, 
    BACK_NO
) VALUES (
    '2002007', '박지성', 'K07', 'MF', 178, 73, 7
);
```

## 2.UPDATE
```commandline
UPDATE PLAYER SET BACK_NO = 99
WHERE PLAYER_NAME = '박지성';
```

## 3.DELETE
```commandline
# where절 조건이 없으면 테이블의 모든 데이터를 삭제한다.
DELETE FROM PLAYER;
```

### Truncate 와의 차이점
```commandline
DDL 명령어를 입력하는 순간 명령어에 해당하는 작업이 즉시(AUTO COMMIT) 완료된다. 
하지만 DML 명령어의 경우, 테이블을 메모리 버퍼에 올려놓고 작업을 하기 때문에 실시간으로 테이블에 영향을 미치는 것은 아니다. 
따라서 버퍼에서 처리한 DML 명령어가 테이블에 반영되기 위해서는,
COMMIT 명령어를 입력하여 TRANSACTION을 종료해야한다. 

따라서 모든 테이블의 데이터 삭제시 시스템 부하가 적은 TRUNCATE TABLE을 권고한다. 
단, TRUNCATE TABLE의 경우 삭제된 데이터의 로그가 없으므로 ROLLBACK이 불가능하다.
```

## 4.SELECT
```commandline
SELECT PLAYER_ID, PLAYER_NAME, TEAM_ID, POSITION, HEIGHT, WEIGHT, BACK_NO 
FROM PLAYER;
```

### DISTINCT 옵션
```commandline
# 480개 행
SELECT POSITION FROM PLAYER; 
# 5개 행
SELECT DISTINCT POSITION FROM PLAYER;
```