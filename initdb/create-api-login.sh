CREATE OR REPLACE FUNCTION public.login(
    username TEXT,
    user_password TEXT
) RETURNS TABLE(id INT, name VARCHAR(100), email VARCHAR(100), role VARCHAR(50)) AS $$
DECLARE
    stored_password TEXT;
BEGIN
    -- ค้นหารหัสผ่านของผู้ใช้จาก email ที่ระบุ
    SELECT users.password INTO stored_password FROM users WHERE users.email = username;

    -- ตรวจสอบว่ารหัสผ่านถูกต้อง
    IF stored_password IS NOT NULL AND stored_password = user_password THEN
        RETURN QUERY
        SELECT users.id, users.name, users.email, users.role
        FROM users
        WHERE users.email = username;
    END IF;

    RETURN; -- คืนค่าเปล่าถ้าการตรวจสอบไม่ผ่าน
END;
$$ LANGUAGE plpgsql;
