
# ถ้ามีฟังก์ชันนี้อยู่แล้วให้ลบก่อน
DROP FUNCTION IF EXISTS public.login(TEXT, TEXT);

CREATE OR REPLACE FUNCTION public.login(
    username TEXT,
    user_password TEXT
) RETURNS TABLE(id INT, name VARCHAR(100), email VARCHAR(100), role VARCHAR(50)) AS $$
DECLARE
    stored_password TEXT;
BEGIN
    -- ค้นหารหัสผ่านของผู้ใช้จาก email ที่ระบุ
    SELECT users.password INTO stored_password FROM users WHERE users.email = username;

    -- ตรวจสอบว่ารหัสผ่านถูกต้องโดยใช้ฟังก์ชัน crypt
    IF stored_password IS NOT NULL AND crypt(user_password, stored_password) = stored_password THEN
        RETURN QUERY
        SELECT users.id, users.name, users.email, users.role
        FROM users
        WHERE users.email = username;
    END IF;

    RETURN; -- คืนค่าเปล่าถ้าการตรวจสอบไม่ผ่าน
END;
$$ LANGUAGE plpgsql;

CREATE ROLE web_anon;

GRANT EXECUTE ON FUNCTION public.login(TEXT, TEXT) TO web_anon;