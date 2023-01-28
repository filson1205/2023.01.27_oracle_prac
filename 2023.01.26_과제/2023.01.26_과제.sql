--1. 춘 기술대학교의 학과 이름과 계열을 표시하시오. 단, 출력 헤더는 "학과 명", "계열"
--으로 표시하도록 한다.
SELECT
       DEPARTMENT_NAME 학과명   
     , CATEGORY 계열
  FROM TB_DEPARTMENT;

--2. 학과의 학과 정원을 다음과 같은 형태로 화면에 출력한다.
SELECT
      CAPACITY 학과별정원
  FROM TB_DEPARTMENT;

--3. "국어국문학과" 에 다니는 여학생 중 현재 휴학중인 여학생을 찾아달라는 요청이
--들어왔다. 누구인가? (국문학과의 '학과코드'는 학과 테이블(TB_DEPARTMENT)을 조회해서
--찾아 내도록 하자)
SELECT
       STUDENT_NAME 
  FROM TB_STUDENT S
  JOIN TB_DEPARTMENT D 
    ON (S.DEPARTMENT_NO = D.DEPARTMENT_NO)
 WHERE ABSENCE_YN = 'Y'
   AND D.DEPARTMENT_NAME = '국어국문학과'
   AND SUBSTR(S.STUDENT_SSN, 8, 1) IN ('2', '4', '6');