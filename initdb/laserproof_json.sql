
-- Connect to the database
\c laserproof_db;

-- Create table for development_type
CREATE TABLE development_type (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO development_type (description) VALUES
('New Product'),
('Re-Order'),
('Refer Artwork');

-- Create table for request_type
CREATE TABLE request_type (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO request_type (description) VALUES
('Mass-Production'),
('Sample');

-- Create table for financial_type
CREATE TABLE financial_type (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO financial_type (description) VALUES
('Debit'),
('Credit'),
('ATM'),
('Prepaid'),
('VISA'),
('Mastercard'),
('JCB'),
('TPN'),
('TBA/TBCC'),
('Diners'),
('Rupay'),
('MPU'),
('AMEX'),
('UPI'),
('Other');

-- Create table for non_financial
CREATE TABLE non_financial (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO non_financial (description) VALUES
('None'),
('Government/ID'),
('Ticket'),
('Transportation'),
('Gift Cards'),
('Loyalty Card/Membership');

-- Create table for card_functional
CREATE TABLE card_functional (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO card_functional (description) VALUES
('Plastic Card (Non Mag.Stripe)'),
('Plastic Card (Mag.Stripe)'),
('Hybrid/Dual Frequency'),
('Contact Chip'),
('Contactless'),
('Dual Interface'),
('Metal Inlay Card'),
('Sim Card'),
('PIN Form'),
('Paper Card'),
('Paper Scratch Card'),
('Paper Product'),
('Other');

-- Create table for match_color
CREATE TABLE match_color (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO match_color (description) VALUES
('Laser Proof'),
('Pantone'),
('Sample'),
('Other');

-- Create table for bin_ica_ibd
CREATE TABLE bin_ica_ibd (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO bin_ica_ibd (description) VALUES
('No'),
('ICA / BID No.'),
('BIN No.'),
('Other');

-- Create table for card_size
CREATE TABLE card_size (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO card_size (description) VALUES
('ISO 85.6X53.98 mm.'),
('Other');

-- Create table for special_punch
CREATE TABLE special_punch (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO special_punch (description) VALUES
('No'),
('Refer. From Sample'),
('Customer');

-- Create table for plug_in_type
CREATE TABLE plug_in_type (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO plug_in_type (description) VALUES
('No'),
('Plug-in Std Sim (2FF)'),
('Plug-in Micro Sim (3FF)'),
('Plug-in Nano Sim (4FF)'),
('Plug-in Hybrid Sim (2FF+3FF)'),
('Plug-in Multi Sim (2FF+3FF+4FF)');

-- Create table for card_thickness
CREATE TABLE card_thickness (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO card_thickness (description) VALUES
('0.80+/-0.04mm.'),
('0.76 mm.+/-'),
('0.74 mm.+/-'),
('0.55 mm.+/-'),
('Other');

-- Create table for core_material
CREATE TABLE core_material (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO core_material (description) VALUES
('PVC Normal'),
('PVC Transparent'),
('Bio-Degradable'),
('rPVC'),
('rPVC Hololam'),
('Hololam'),
('PC (Polycarbonate)'),
('Hi-Vicat'),
('PVC Mono Block'),
('Paper'),
('PVC Color'),
('PET'),
('PET-G'),
('Marble PVC'),
('Marble Hololam'),
('Marble Transparent');

-- Create table for overlay
CREATE TABLE overlay (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO overlay (description) VALUES
('No Overlay'),
('Normal'),
('Laser'),
('rPVC Overlay'),
('KP'),
('Other');

-- Create table for coated
CREATE TABLE coated (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO coated (description) VALUES
('No'),
('Laminate'),
('OPP'),
('Varnish'),
('Texture'),
('Gross'),
('Matt');

-- Create table for spot_uv_varnish
CREATE TABLE spot_uv_varnish (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO spot_uv_varnish (description) VALUES
('No'),
('Spot UV (Full)'),
('Spot UV (Partial)'),
('Spot Varnish'),
('UV Inkjet Spot Matt'),
('UV Inkjet Spot Matt 1 Round'),
('UV Inkjet Spot Matt 2 Round'),
('UV Inkjet Spot Glossy'),
('UV Inkjet Spot Glossy 1 Round'),
('UV Inkjet Spot Glossy 2 Round'),
('UV Inkjet Ref. LP'),
('Other');

-- Create table for spot_uv_varnish_back
CREATE TABLE spot_uv_varnish_back (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO spot_uv_varnish_back (description) VALUES
('No'),
('Spot UV(F)'),
('Spot UV(P)'),
('Spot Varnish'),
('Inkjet');

-- Create table for mag_stripe
CREATE TABLE mag_stripe (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO mag_stripe (description) VALUES
('No'),
('Front'),
('Back'),
('Hi-Co'),
('Low-Co'),
('3 tracks (12.7mm)'),
('2 tracks (8.5mm)'),
('Other');

-- Create table for signature_silk_screen
CREATE TABLE signature_silk_screen  (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO signature_silk_screen  (description) VALUES
('No'),
('White Sign'),
('Clear Sign'),
('Size'),
('Front'),
('Back');

-- Create table for hologram
CREATE TABLE hologram  (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO hologram  (description) VALUES
('No'),
('Front'),
('Back'),
('Customize');

-- Create table for special printing
CREATE TABLE special_printing  (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO special_printing  (description) VALUES
('No'),
('Front'),
('Back'),
('Customize');

-- Create table for photo_panel
CREATE TABLE photo_panel (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO photo_panel (description) VALUES
('No'),
('Front (WxH)'),
('Back (WxH)'),
('Ref. Laser Proof'),
('Other');

-- Create table for hot_stamp_color_edge
CREATE TABLE hot_stamp_color_edge (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO hot_stamp_color_edge (description) VALUES
('No, Hot stamp Front1, Hot stamp Front2, Hot stamp Front3, Hot Stamp Back1, Hot Stamp Back2, Hot Stamp Back3, Running No Front, Running No Back');


-- Create table for personalization
CREATE TABLE personalization (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO personalization (description) VALUES
('No, dz card (SB), Customer Specific');

-- Create table for product
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO product (description) VALUES
('Payment Scheme, ATM, Scratch Card, Loyalty, Paper, SIM, Other');

-- Create table for print_method
CREATE TABLE print_method (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO print_method (description) VALUES
('DOD, Inkjet, Embrossed, Thermal/DTC, Thermal/Retransfer, Indent, Laser Engrave, Other');

-- Create table for perso_detail
CREATE TABLE perso_detail (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO perso_detail (description) VALUES
('PAN 16 Digits, Encode, CVV2/CVC2, Barcode, PIN, Photo: Color, Photo: Black & White, Number, CPG Version, CHIP, Expiry date, QR Code, Cardholder Name, Running Number, Valid Thru, OTHER');

-- Create table for encoding
CREATE TABLE encoding (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO encoding (description) VALUES
('Mag. Stripe, Contact Chip, Contactless, Dual interface');

-- Create table for chip_test_acceptance
CREATE TABLE chip_test_acceptance (
    id SERIAL PRIMARY KEY,
    description TEXT
);

INSERT INTO chip_test_acceptance (description) VALUES
('Not Approved'),
('Approved'),
('Refer Document');


-- Create the table
CREATE TABLE card_info (
    id SERIAL PRIMARY KEY,

    -- Process Field (Using JSONB to store multiple options)
    process JSONB DEFAULT '[]', -- Example: {"CP": true, "SB": true, "Supplier": true, "SupplierName": "Supplier XYZ"}

    -- Development Type Field (Using ENUM and additional fields for details)
    development_type JSONB DEFAULT '[]',
    -- development_type_reorder_oc_no VARCHAR(50), -- Only relevant if development_type is 'Re-Order'
    -- development_type_refer_artwork_oc VARCHAR(50), -- Only relevant if development_type is 'Refer Artwork'

    request_type JSONB DEFAULT '[]',
    -- request_type_sample_details TEXT,
    new_oc_no VARCHAR(50),
    po_no VARCHAR(50),
    qty INTEGER,
    customer_name VARCHAR(255),
    issuer_name VARCHAR(255),
    card_name_product_description TEXT,
    request_by VARCHAR(255),
    department VARCHAR(255),
    request_date DATE,
    revision VARCHAR(10),
    email VARCHAR(255),
    contact_no VARCHAR(50),
    remarks_reorder TEXT,
    engineer_issuer_name VARCHAR(255),
    engineer_product_item_fg_no VARCHAR(50),
    engineer_product_item_fg_perso_no VARCHAR(50),
    engineer_cards_name_product_description TEXT,
    checked_by VARCHAR(255),
    engineer_check_date DATE,
    engineer_remarks TEXT,
    
    -- Financial Field (Using ENUM and additional fields for details)
    financial_type JSONB DEFAULT '[]', -- Only one financial type allowed at a time
    -- financial_other_details VARCHAR(255), -- Only relevant if financial_type is 'Other'

    non_financial JSONB DEFAULT '[]',

    engineer_test_card BOOLEAN DEFAULT FALSE,

    telecom JSONB DEFAULT '[]', -- Example: {"Telecom": true, "SIM": true, "Scratch Card": true}

    paper_fullfillment_eng_test_card JSONB DEFAULT '[]', -- Example: {"Paper": false,"Fullfillment": false}

    card_functional JSONB DEFAULT '[]',
    -- card_functional_other_details TEXT,

    match_color JSONB DEFAULT '[]',
    -- match_color_pantone_details TEXT,
    -- match_color_sample_details TEXT,
    -- match_color_other_details TEXT,

    bin_ica_ibd JSONB DEFAULT '[]',
    -- ica_bid_no_details TEXT,
    -- bin_no_details TEXT,
    -- other_details TEXT,

    card_size JSONB DEFAULT '[]',
    -- card_size_other_details TEXT,

    special_punch JSONB DEFAULT '[]',
    -- special_punch_other_details TEXT,
    -- special_punch_customer_no TEXT,

    plug_in JSONB DEFAULT '[]',

    card_thickness JSONB DEFAULT '[]',
    -- card_thickness_details TEXT,

    core_material_front JSONB DEFAULT '[]',
    -- front_hololam_details TEXT,
    -- front_paper_details TEXT,
    -- front_color_details TEXT,
    -- front_other_details TEXT,

    core_material_back JSONB DEFAULT '[]',
    -- back_hololam_details TEXT,
    -- back_paper_details TEXT,
    -- back_color_details TEXT,
    -- back_other_details TEXT,

    overlay_front JSONB DEFAULT '[]',
    -- overlay_front_laser_details TEXT,
    -- overlay_front_other_details TEXT,

    overlay_back JSONB DEFAULT '[]',
    -- overlay_back_laser_details TEXT,
    -- overlay_back_other_details TEXT,

    coated_front JSONB DEFAULT '[]', --Example {"No": false, "OPP": true, "Varnish": false, "Texture": true, "coated_front_texture_details":"", "Gross": false, "Matt": true}

    coated_back JSONB DEFAULT '[]', --Example {"No": false,"Laminate": false, "OPP": true, "Varnish": false, "Texture": true, "coated_back_texture_details":"", "Gross": false, "Matt": true}

    spot_uv_varnish_front JSONB DEFAULT '[]',
    -- spot_uv_inkjet_ref_details TEXT,
    -- spot_uv_other_details TEXT,

    spot_uv_varnish_back JSONB DEFAULT '[]',
    -- spot_uv_varnish_back_inkjet_round TEXT,
    -- spot_uv_varnish_back_other_details TEXT,

    mag_stripe JSONB DEFAULT '[]',
    -- mag_stripe_color_details TEXT,
    -- mag_stripe_other_details TEXT,

    chip_model_no BOOLEAN DEFAULT FALSE,
    chip_model_rm_no VARCHAR(255),
    chip_model_list_details TEXT,
    chip_model_other BOOLEAN DEFAULT FALSE,
    chip_model_other_details TEXT,

    antenna_inlay_no BOOLEAN DEFAULT TRUE,
    antenna_inlay_rm_no VARCHAR(255),
    antenna_inlay_list_details TEXT,
    antenna_inlay_type VARCHAR(255),
    antenna_inlay_other BOOLEAN DEFAULT FALSE,
    antenna_inlay_other_details TEXT,

    signature_silk_screen JSONB DEFAULT '[]',
    -- signature_silk_screen_size_detail TEXT,

    hologram JSONB DEFAULT '[]',
    special_punch_die_cut_detail TEXT,
    photo_panel JSONB DEFAULT '[]',
    hot_stamp_color_edge JSONB DEFAULT '[]',
    personalization JSONB DEFAULT '[]',
    product JSONB DEFAULT '[]',
    print_method_front JSONB DEFAULT '[]',
    print_method_back JSONB DEFAULT '[]',
    perso_detail_banking_loyalty JSONB DEFAULT '[]',
    perso_detail_telecom JSONB DEFAULT '[]',
    encoding JSONB DEFAULT '[]',
    chip_test_acceptance JSONB DEFAULT '[]',
    fullfillment JSONB DEFAULT '[]',
    remarks_details TEXT,
    more_details_card_name_product_descrip TEXT,
    hologram_backlist_detail TEXT,
    signature_hot_foil TEXT,
    hologram_item TEXT,
    hologram_front_item TEXT,
    hologram_back_item TEXT,
    engineer_cards_name_product_description_perso TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- Example of how to insert data into the table
-- For New Product (No additional fields needed)
INSERT INTO card_info (process, development_type, financial_type)
VALUES (
    '{"CP": true, "SB": false, "Supplier": false, "SupplierName": null}', -- Example JSONB data for process
    '[]',
    '[]'
);

-- For Re-Order (Include the reorder OC number)
INSERT INTO card_info (process, development_type)
VALUES (
    '{"CP": false, "SB": true, "Supplier": false, "SupplierName": null}', -- Example JSONB data for process
    '[]'
);

-- For Refer Artwork (Include the artwork OC number)
INSERT INTO card_info (process, development_type)
VALUES (
    '{"CP": false, "SB": false, "Supplier": true, "SupplierName": "Supplier XYZ"}', -- Example JSONB data for process
    '[]'
);

-- For Financial with 'Other' type (Include other details)
INSERT INTO card_info (process, development_type, financial_type)
VALUES (
    '{"CP": false, "SB": false, "Supplier": false, "SupplierName": null}', -- Example JSONB data for process
    '[]', -- Financial is independent of development type
    '[]'
);

-- Query to view all data
SELECT * FROM card_info;
