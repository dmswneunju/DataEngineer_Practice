CREATE PROCEDURE mydb.find_and_log_errors()
BEGIN
  -- 오류 데이터 찾는 쿼리 실행 (상품 상세 내용에 숫자가 포함된 경우)
  INSERT INTO 오류_로그 (상품ID, 상품명, 상품상세내용, 상품이미지, 카테고리코드)
  SELECT 상품ID, 상품명, 상품상세내용, 상품이미지, 카테고리코드 FROM 상품 WHERE 상품상세내용 REGEXP '[0-9]';
  
  -- 오류 데이터 찾는 쿼리 실행 (상품 ID가 숫자만으로 구성되지 않은 경우)
  INSERT INTO 오류_로그 (상품ID, 상품명, 상품상세내용, 상품이미지, 카테고리코드)
  SELECT 상품ID, 상품명, 상품상세내용, 상품이미지, 카테고리코드 FROM 상품 WHERE 상품ID NOT REGEXP '^[0-9]+$'; 
END;

-- 프로시저 실행
-- CALL find_and_log_errors();
