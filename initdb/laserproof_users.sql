
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role VARCHAR(50) NOT NULL DEFAULT 'staff',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP   
);

INSERT INTO public.users (id, name, email, password, created_at, updated_at, role) VALUES (1, 'admin', 'admin@laserproof.com', '$2a$06$XYTli1tVeaxJGG7d.bDZ/uNmp3mlNKCsygZZCaEQdMIt/i6V0sKX2', '2024-10-08 03:02:10.158475+00', '2024-10-08 03:02:10.158475+00', 'admin');
INSERT INTO public.users (id, name, email, password, created_at, updated_at, role) VALUES (2, 'user', 'user@laserproof.com', '$2a$06$IacmzteITs4IHMBcN7QD3u7XJnccf3JrWaFJxtd44Mi4BEcPTTfoS', '2024-10-08 03:02:23.736293+00', '2024-10-08 03:02:23.736293+00', 'staff');
