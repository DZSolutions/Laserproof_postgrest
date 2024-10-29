CREATE TABLE color_edge (
    id SERIAL PRIMARY KEY,
    color VARCHAR(50) NOT NULL,
    item VARCHAR(50) NOT NULL
);

INSERT INTO color_edge (color, item) VALUES
('Black Glossy', 'RM01713,RM01714'),
('Black Matt', 'RM004129'),
('Blue Glossy', 'RM06052'),
('Dark Blue Matt', 'RM01711,RM01712'),
('Light Blue Matt', 'RM06051'),
('Green Matt', 'RM03691,RM03720'),
('Green Fluorescent', 'RM03673'),
('Yellow Matt', 'RM04948,RM04949'),
('Orange Matt', 'RM03613,RM03614'),
('Red Matt', 'RM3721,RM03722'),
('Red Burgundy', 'RM03920,RM03929'),
('Pink Matt', 'RM01921/RM06148'),
('Silver Rainbow Glossy', 'RM01717,RM01718'),
('Silver Glossy', 'RM01015,RM01017'),
('Silver Matt', 'RM01715,RM01716'),
('Gold Glossy', 'RM03507,RM03508'),
('Gold Matt', 'RM05489,RM05490'),
('Copper Glossy', 'RM04919'),
('Brown Matt', 'RM06076'),
('PURPLE', 'RM06019,RM06020');