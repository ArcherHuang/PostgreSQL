/* 塞假資料 */
/* 新增 DefectImages 表格資料 */

INSERT INTO DefectImages(guid, steel_no, defect_class_id, defect_x, defect_y, defect_h, defect_w, image_location , degree, thickness, width, class, application_no, inspect_no, is_ok, customer_id, place)
VALUES('20190412', '1.jpg,441,630,804,338,1.bmp', '30', 11, 22, 33, 44, 'D:\test\測試資料\Y5_測試data\pic\片狀汙染\1.jpg,466,592,793,388,1.bmp', 1, 10, 24, 'aa', 'bb', 'cc', TRUE, 'QQ', 'TW')

SELECT * FROM DefectImages

Update DefectImages SET thickness = 50, create_time = now() WHERE place = 'TW'
