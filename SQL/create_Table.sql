/* 安裝 uuid-ossp 套件 */
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/* 建立 DefectImages 資料表 */
CREATE TABLE DefectImages (
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    guid text,
    steel_no text,
    defect_class_id text,
    defect_x bigint,
    defect_y bigint,
    defect_h bigint,
    defect_w bigint,
    image_location text,
    degree smallint,
    thickness smallint,
    width smallint,
    class text,
    application_no text,
    inspect_no text,
    is_ok boolean,
    customer_id text,
    place text,
    image_fullPath text,
    image_date_class_filename text UNIQUE,
    create_time timestamp DEFAULT CURRENT_TIMESTAMP
);