CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE OR REPLACE FUNCTION hash_password(pwd TEXT) RETURNS TEXT AS $$
BEGIN
    RETURN crypt(pwd, gen_salt('bf'));  -- ใช้ bcrypt ในการ hash รหัสผ่าน
END;
$$ LANGUAGE plpgsql;

INSERT INTO users (name, email, password, role)
VALUES ('admin', 'admin@laserproof.com', hash_password('123456'), 'admin');

INSERT INTO users (name, email, password, role)
VALUES ('user', 'user@laserproof.com', hash_password('1234'), 'staff');


-- ตัวอย่างสำหรับตรวจสอบค่า hash password
SELECT crypt('123456', password) = password
FROM users
WHERE email = 'admin@laserproof.com';