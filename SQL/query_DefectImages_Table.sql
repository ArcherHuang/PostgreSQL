-- 1. 查詢 DefectImages 資料表
SELECT * FROM DefectImages

-- 2. 計算 DefectImages 資料表的紀錄數量
SELECT COUNT(*) FROM DefectImages

-- 3. 查詢 DefectImages 資料表前 2 筆的紀錄
SELECT * FROM DefectImages LIMIT 2

-- 4. 查詢 DefectImages 資料表中 steel_no 為 100 的紀錄
SELECT * FROM DefectImages WHERE steel_no = '100'

-- 5. 查詢 DefectImages 資料表中 steel_no 為 100 與 111 的紀錄
SELECT * FROM DefectImages WHERE steel_no IN ('100', '111')

-- 6. 查詢 DefectImages 資料表中 steel_no 為非 100 與 111 的紀錄
SELECT * FROM DefectImages WHERE steel_no NOT IN ('100', '111')

-- 7. 查詢 DefectImages 資料表中 defect_class_id 為 36M-壓痕（麻臉型） 的紀錄
SELECT * FROM DefectImages WHERE defect_class_id = '36M-壓痕（麻臉型）'

-- 8. 查詢 DefectImages 資料表中 defect_x 大於 2000 且 defect_y 大於 1300 且 defect_h 大於 1500 且 defect_w 大於 450 的紀錄
SELECT * FROM DefectImages WHERE defect_x > 2000 AND defect_y > 1300 AND defect_h > 1500 AND defect_w > 450

-- 9. 查詢 DefectImages 資料表中 degree 大於等於 3 的紀錄
SELECT * FROM DefectImages WHERE degree >= 3

-- 10. 查詢 DefectImages 資料表中 thickness 大於 15 的紀錄
SELECT * FROM DefectImages WHERE thickness > 15

-- 11. 查詢 DefectImages 資料表中 width 大於 24 的紀錄
SELECT * FROM DefectImages WHERE width > 24

-- 12. 查詢 DefectImages 資料表中 class 為 AC37A-鋼種C37A 的紀錄
SELECT * FROM DefectImages WHERE class = 'AC37A-鋼種C37A'

-- 13. 查詢 DefectImages 資料表中 class 為 A 開頭的紀錄
SELECT * FROM DefectImages WHERE class LIKE 'A%'

-- 14. 查詢 DefectImages 資料表中 application_no 為 K20B-應用代碼K20B 的紀錄
SELECT * FROM DefectImages WHERE application_no = 'K20B-應用代碼K20B'

-- 15. 查詢 DefectImages 資料表中 inspect_no 為 I35R-檢測代碼I35R 的紀錄
SELECT * FROM DefectImages WHERE inspect_no = 'I35R-檢測代碼I35R'

-- 16. 查詢 DefectImages 資料表中 is_ok 為 TRUE 的紀錄
SELECT * FROM DefectImages WHERE is_ok = TRUE

-- 17. 查詢 DefectImages 資料表中 customer_id 為 K59-廠商K59 的紀錄
SELECT * FROM DefectImages WHERE customer_id = 'K59-廠商K59'

-- 18. 查詢 DefectImages 資料表中 place 為 Q20P-地區Q20P 的紀錄
SELECT * FROM DefectImages WHERE place = 'Q20P-地區Q20P'

-- 19. 查詢 DefectImages 資料表中 image_date_class_filename 為含有 30-亮點 字樣的紀錄
SELECT * FROM DefectImages WHERE image_date_class_filename LIKE '%30-亮點%'

-- 20. 查詢 DefectImages 資料表中 create_time 大於 '2019-05-02 17:30:00' 的紀錄
SELECT * FROM DefectImages WHERE create_time > '2019-05-02 17:30:00'

-- 21. 查詢 DefectImages 資料表中 create_time 介於 '2019-05-02 17:25:00' 與 '2019-05-02 17:29:00' 間的紀錄
SELECT * FROM DefectImages WHERE create_time BETWEEN '2019-05-02 17:25:00' AND '2019-05-02 17:29:00'

