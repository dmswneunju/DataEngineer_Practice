CREATE TABLE `오류_로그` ( 
  '상품ID' int NOT NULL, 
  '상품명' varchar(100) DEFAULT NULL,
  '상품상세내용' text,
  '상품이미지' varchar(200) DEFAULT NULL, 
  '카테고리코드' varchar(20) DEFAULT NULL,
PRIMARY KEY ('상품ID')
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
