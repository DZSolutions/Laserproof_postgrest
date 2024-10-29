
-- Connect to the database
\c laserproof_db;

-- Create ENUM types
CREATE TYPE development_type_enum AS ENUM (
    'New Product',
    'Re-Order',
    'Refer Artwork'
);

CREATE TYPE request_type_enum AS ENUM ('Mass-Production', 'Sample');

CREATE TYPE card_type_enum AS ENUM ('Financial', 'Non-Financial', 'Test Card');

CREATE TABLE card_usage_type (
    id SERIAL PRIMARY KEY,
    description VARCHAR(50) NOT NULL,
    type VARCHAR(20) NOT NULL
);

INSERT INTO card_usage_type (description, type) VALUES
    ('Debit', 'Financial'),
    ('Credit', 'Financial'),
    ('ATM', 'Financial'),
    ('Prepaid', 'Financial'),
    ('Government/ID', 'Non-Financial'),
    ('Ticket', 'Non-Financial'),
    ('Transportation', 'Non-Financial'),
    ('Gift Cards', 'Non-Financial'),
    ('Loyalty/Membership', 'Non-Financial'),
    ('Engineering Test', 'Test Card'),
    ('Telecom', 'Telecom'),
    ('Paper', 'Telecom'),
    ('Fullfilment', 'Telecom'),
    ('SIM', 'Telecom'),
    ('Scratch Card', 'Telecom'),
    ('Engineering Test Card', 'Test Card');

CREATE TYPE payment_brand_enum AS ENUM (
    'VISA',
    'Mastercard',
    'JCB',
    'TPN',
    'TBA/TBCC',
    'Diners',
    'Rupay',
    'MPU',
    'AMEX',
    'UPI',
    'Other'
);

CREATE TYPE card_functional_enum AS ENUM (
    'Plastic Card (Non Mag.Stripe)',
    'Plastic Card (Mag.Stripe)',
    'Hybrid/Dual Frequency',
    'Contact Chip',
    'Contactless',
    'Dual Interface',
    'Metal Inlay Card',
    'Sim Card',
    'PIN Form',
    'Paper Card',
    'Paper Scratch Card',
    'Paper Product',
    'Other'
);


CREATE TYPE bin_ica_ibd_enum AS ENUM (
    'No',
    'ICA / BID No.',
    'BIN No.',
    'Other'
);

CREATE TYPE card_size_enum AS ENUM (
    'ISO 85.6X53.98 mm.',
    'Other'
);

CREATE TYPE special_punch_enum AS ENUM (
    'No',
    'Refer. From Sample',
    'Customer'
);

CREATE TYPE plug_in_type_enum AS ENUM (
    'No',
    'Plug-in Std Sim (2FF)',
    'Plug-in Micro Sim (3FF)',
    'Plug-in Nano Sim (4FF)',
    'Plug-in Hybrid Sim (2FF+3FF)',
    'Plug-in Multi Sim (2FF+3FF+4FF)'
);

CREATE TYPE card_thickness_enum AS ENUM (
    '0.80+/-0.04mm.',
    '0.76 mm.+/-',
    '0.74 mm.+/-',
    '0.55 mm.+/-',
    'Other'
);

CREATE TYPE core_material_enum AS ENUM (
    'PVC Normal',
    'PVC Transparent',
    'Bio-Degradable',
    'rPVC',
    'rPVC Hololam',
    'Hololam',
    'PC (Polycarbonate)',
    'Hi-Vicat',
    'PVC Mono Block',
    'Paper',
    'PVC Color',
    'PET',
    'PET-G',
    'Marble PVC',
    'Marble Hololam',
    'Marble Transparent'
);

CREATE TYPE hololam_detail_enum AS ENUM (
    'SILVER RAINBOW RED CORE',
    'SILVER RAINBOW BLACK CORE',
    'SILVER RAINBOW WHITE CORE',
    'HAIRLINE',
    'WHITE RAINBOW',
    'CLEAR WHITE',
    'BRIGHT SILVER'
);



CREATE TYPE overlay_enum AS ENUM (
    'No Overlay',
    'Normal',
    'Laser',
    'rPVC Overlay',
    'KP',
    'Other'
);

CREATE TYPE coated_enum AS ENUM (
    'No',
    'Laminate',
    'OPP',
    'Varnish',
    'Texture',
    'Gross',
    'Matt'
);


CREATE TYPE spot_uv_varnish_inkjet_enum AS ENUM (
    'No',
    'Spot Varnish',
    'Spot UV',
    'Spot UV Inkjet',
    'Ref. Laser Proof',
    'Other'
);

CREATE TYPE mag_stripe_enum AS ENUM (
    'No',
    'Front',
    'Back',
    'Hi-Co',
    'Low-Co',
    '3 tracks (12.7mm)',
    '2 tracks (8.5mm)',
    'Other'
);

CREATE TABLE chip_list (
    id SERIAL PRIMARY KEY,
    rm_no VARCHAR(50) NOT NULL,
    item VARCHAR(255) NOT NULL
);

INSERT INTO chip_list (rm_no, item) VALUES
    ('SFG000150', 'CHIP DI ADV PKG-WAFER NXP P71 J3R200 PMU15/0ZB429P GOLD-MCHIP1.2.3 + VSDC 2.9 + JSMART'),
    ('SFG000151', 'CHIP EXAMPLE PKG-WAFER XYZ');

CREATE TABLE antenna_list (
    id SERIAL PRIMARY KEY,
    rm_no VARCHAR(50) NOT NULL,
    item VARCHAR(255) NOT NULL
);

INSERT INTO antenna_list (rm_no, item) VALUES
    ('SFG000150', 'CHIP DI ADV PKG-WAFER NXP P71 J3R200 PMU15/0ZB429P GOLD-MCHIP1.2.3 + VSDC 2.9 + JSMART'),
    ('SFG000151', 'CHIP EXAMPLE PKG-WAFER XYZ');

-- Create enum type for signature_silk_screen_enum
CREATE TYPE signature_silk_screen_enum AS ENUM (
    'No',
    'White Sign',
    'Clear Sign',
    'Size'
);


CREATE TABLE hologram_list (
    id SERIAL PRIMARY KEY,
    item VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL
);

INSERT INTO hologram_list (item, description) VALUES
    ('RM04924', 'Visa Premium Brand Mark_Silver (Vertical) (90°)'),
    ('RM01123', 'MC Premium Brand Mark Std');


-- Create enum type for hologram
CREATE TYPE hologram_enum AS ENUM (
    'No',
    'Front',
    'Back',
    'Customize'
);

-- Create enum type for personalization
CREATE TYPE personalization_enum AS ENUM (
    'No',
    'dz card (SB)',
    'Customer Specific'
);

-- Create enum type for print_method
CREATE TYPE print_method_enum AS ENUM (
    'DOD',
    'Inkjet',
    'Embrossed',
    'Thermal/DTC',
    'Thermal/Retransfer',
    'Indent',
    'Laser Engrave',
    'Other'
);

-- Create enum type for perso_detail
CREATE TYPE perso_detail_enum AS ENUM (
    'PAN 16 Digits',
    'Encode',
    'CVV2/CVC2',
    'Barcode',
    'PIN',
    'Photo: Color',
    'Photo: Black & White',
    'Number',
    'CPG Version',
    'CHIP',
    'Expiry date',
    'QR Code',
    'Cardholder Name',
    'Running Number',
    'Valid Thru',
    'OTHER'
);

-- Create view for development_type_enum
CREATE VIEW development_type_view AS
SELECT unnest(enum_range(NULL::development_type_enum))::development_type_enum AS development_type;

-- Create view for request_type_enum
CREATE VIEW request_type_view AS
SELECT unnest(enum_range(NULL::request_type_enum))::request_type_enum AS request_type;

-- Create view for card_type_enum
CREATE VIEW card_type_view AS
SELECT unnest(enum_range(NULL::card_type_enum))::card_type_enum AS card_type;

-- Create view for card_functional_enum
CREATE VIEW card_functional_view AS
SELECT unnest(enum_range(NULL::card_functional_enum))::card_functional_enum AS card_functional;

-- Create view for bin_ica_ibd_enum
CREATE VIEW bin_ica_ibd_view AS
SELECT unnest(enum_range(NULL::bin_ica_ibd_enum))::bin_ica_ibd_enum AS bin_ica_ibd;

-- Create view for card_size_enum
CREATE VIEW card_size_view AS
SELECT unnest(enum_range(NULL::card_size_enum))::card_size_enum AS card_size;

-- Create view for special_punch_enum
CREATE VIEW special_punch_view AS
SELECT unnest(enum_range(NULL::special_punch_enum))::special_punch_enum AS special_punch;

-- Create view for plug_in_type_enum
CREATE VIEW plug_in_type_view AS
SELECT unnest(enum_range(NULL::plug_in_type_enum))::plug_in_type_enum AS plug_in_type;

-- Create view for card_thickness_enum
CREATE VIEW card_thickness_view AS
SELECT unnest(enum_range(NULL::card_thickness_enum))::card_thickness_enum AS card_thickness;

-- Create view for core_material_enum
CREATE VIEW core_material_view AS
SELECT unnest(enum_range(NULL::core_material_enum))::core_material_enum AS core_material;

-- Create view for hololam_detail_enum
CREATE VIEW hololam_detail_view AS
SELECT unnest(enum_range(NULL::hololam_detail_enum))::hololam_detail_enum AS hololam_detail;


-- Create view for overlay_enum
CREATE VIEW overlay_view AS
SELECT unnest(enum_range(NULL::overlay_enum))::overlay_enum AS overlay;

-- Create view for coated_enum
CREATE VIEW coated_view AS
SELECT unnest(enum_range(NULL::coated_enum))::coated_enum AS coated;

-- Create view for spot_uv_varnish_enum
CREATE VIEW spot_uv_varnish_inkjet_view AS
SELECT unnest(enum_range(NULL::spot_uv_varnish_inkjet_enum))::spot_uv_varnish_inkjet_enum AS spot_uv_varnish_inkjet;

-- Create view for mag_stripe_enum
CREATE VIEW mag_stripe_view AS
SELECT unnest(enum_range(NULL::mag_stripe_enum))::mag_stripe_enum AS mag_stripe;

-- Create view for signature_silk_screen_enum
CREATE VIEW signature_silk_screen_view AS
SELECT unnest(enum_range(NULL::signature_silk_screen_enum))::signature_silk_screen_enum AS signature_silk_screen;

-- Create view for hologram_enum
CREATE VIEW hologram_view AS
SELECT unnest(enum_range(NULL::hologram_enum))::hologram_enum AS hologram;

-- Create view for personalization_enum
CREATE VIEW personalization_view AS
SELECT unnest(enum_range(NULL::personalization_enum))::personalization_enum AS personalization;

-- Create view for print_method_enum
CREATE VIEW print_method_view AS
SELECT unnest(enum_range(NULL::print_method_enum))::print_method_enum AS print_method;

-- Create view for perso_detail_enum
CREATE VIEW perso_detail_view AS
SELECT unnest(enum_range(NULL::perso_detail_enum))::perso_detail_enum AS perso_detail;

-- Create the table
CREATE TABLE card_info (
    id SERIAL PRIMARY KEY,
    status VARCHAR(50),
    csname TEXT,

    process TEXT[], -- Example: CP,SB,Supplier
    supplier_name TEXT,

    -- Development Type Field (Using ENUM and additional fields for details)
    development_type development_type_enum,
    development_type_reorder_oc_no VARCHAR(50), -- Only relevant if development_type is 'Re-Order'
    development_type_refer_artwork_oc VARCHAR(50), -- Only relevant if development_type is 'Refer Artwork'
    product_ref_no VARCHAR(50),

    request_type request_type_enum,
    request_type_sample_details VARCHAR(50),

    new_oc_no VARCHAR(50),
    po_no VARCHAR(50),
    qty INTEGER,
    customer_name VARCHAR(255),
    issuer_name VARCHAR(255),
    card_name_product_description TEXT,
    request_by VARCHAR(50),
    department VARCHAR(255),
    request_date DATE,
    email VARCHAR(50),
    contact_no VARCHAR(50),

    engineer_issuer_name VARCHAR(255),
    engineer_product_item_fg_no VARCHAR(50),
    engineer_product_item_fg_perso_no VARCHAR(50),
    engineer_cards_name_product_description TEXT,
    engineer_cards_name_product_description_perso TEXT,
    engineer_checked_by VARCHAR(50),
    engineer_check_date DATE,
    engineer_remarks TEXT,

    card_type card_type_enum,
    card_usage_type VARCHAR(50),
    payment_brand payment_brand_enum,

    card_functional card_functional_enum,
    card_functional_other_details TEXT,

    match_color TEXT[],
    match_color_pantone_details TEXT,
    match_color_sample_details TEXT,
    match_color_other_details TEXT,

    bin_ica_ibd bin_ica_ibd_enum,
    ica_bid_no_details TEXT,
    bin_no_details TEXT,
    other_details TEXT,

    card_size card_size_enum,
    card_size_other_details TEXT,

    special_punch special_punch_enum,
    special_punch_other_details TEXT,
    special_punch_customer_no TEXT,

    plug_in plug_in_type_enum,

    card_thickness card_thickness_enum,
    card_thickness_details TEXT,

    core_material_front core_material_enum,
    front_hololam_details hololam_detail_enum,
    front_paper_details TEXT,
    front_color_details TEXT,
    front_other_details TEXT,

    core_material_back core_material_enum,
    back_hololam_details hololam_detail_enum,
    back_paper_details TEXT,
    back_color_details TEXT,
    back_other_details TEXT,

    overlay_front overlay_enum,
    overlay_front_laser_details TEXT,
    overlay_front_other_details TEXT,

    overlay_back overlay_enum,
    overlay_back_laser_details TEXT,
    overlay_back_other_details TEXT,

    coated_front coated_enum,
    coated_front_texture_details TEXT,
    coated_front_gloss_matt VARCHAR(50),
    coated_back coated_enum,
    coated_back_texture_details TEXT,
    coated_back_gloss_matt VARCHAR(50),

    spot_uv_varnish_inkjet TEXT[],
    spot_varnish_details VARCHAR(50),
    spot_uv_details VARCHAR(50),
    spot_uv_inkjet_details VARCHAR(50),
    spot_uv_inkjet_option VARCHAR(50),

    spot_uv_ref_details VARCHAR(50),
    spot_uv_other_details VARCHAR(50),

    mag_stripe mag_stripe_enum,
    mag_stripe_color_details VARCHAR(50),
    mag_stripe_hi_co BOOLEAN DEFAULT TRUE,


    chip_status BOOLEAN DEFAULT FALSE,
    chip_model_rm_no VARCHAR(50),
    chip_model_item TEXT,
    chip_model_other_details TEXT,

    antenna_inlay_status BOOLEAN DEFAULT FALSE,
    antenna_inlay_rm_no VARCHAR(50),
    antenna_inlay_item TEXT,
    antenna_inlay_other_details TEXT,

    signature_silk_screen_status BOOLEAN DEFAULT FALSE,
    signature_silk_screen signature_silk_screen_enum,
    signature_silk_screen_size_detail TEXT,
    signature_hot_foil_list TEXT,
    signature_hot_foil_item  VARCHAR(50),
    signature_hot_other_detail VARCHAR(50),

    hologram_status BOOLEAN DEFAULT FALSE,
    hologram_no1_list TEXT,
    hologram_no1_item VARCHAR(50),
    hologram_no2_list TEXT,
    hologram_no2_item VARCHAR(50),
    hologram_customize_details TEXT,

    special_punch_die_cut_detail TEXT,

    photo_panel_status BOOLEAN DEFAULT FALSE,
    photo_panel_size TEXT,

    hot_stamp_running_no1 TEXT,
    hot_stamp_running_no2 TEXT,
    hot_stamp_front_color1 TEXT,
    hot_stamp_front_color2 TEXT,
    hot_stamp_front_color3 TEXT,
    hot_stamp_back_color1 TEXT,
    hot_stamp_back_color2 TEXT,
    hot_stamp_back_color3 TEXT,

    color_edge_status BOOLEAN DEFAULT FALSE,
    color_edge1 TEXT,
    color_edge2 TEXT,
    color_edge3 TEXT,
    color_edge1_detail TEXT,
    color_edge2_detail TEXT,
    color_edge3_detail TEXT,


    special_printing_status BOOLEAN DEFAULT FALSE,
    special_printing_option1 TEXT,
    special_printing_option2 TEXT,
    special_printing_option3 TEXT,
    special_printing_option4 TEXT,
    special_printing_customize TEXT,

    special_remark_details TEXT,

    personalization personalization_enum,
    personalization_customer_spec_detail TEXT,

    print_method_front TEXT[],
    print_method_front_embrossed_color TEXT,
    print_method_front_other_detail TEXT,

    print_method_back TEXT[],
    print_method_back_embrossed_color TEXT,
    print_method_back_other_detail TEXT,

    perso_detail_banking_loyalty TEXT[],

    banking_loyalty_pan BOOLEAN DEFAULT FALSE,
    banking_loyalty_pan_1 VARCHAR(50),
    banking_loyalty_pan_2 TEXT,
    banking_loyalty_pan_3 TEXT,

    banking_loyalty_encode BOOLEAN DEFAULT FALSE,
    banking_loyalty_encode_1 VARCHAR(50),
    banking_loyalty_encode_2 TEXT,
    banking_loyalty_encode_3 TEXT,

    banking_loyalty_cvv2 BOOLEAN DEFAULT FALSE,
    banking_loyalty_cvv2_1 VARCHAR(50),
    banking_loyalty_cvv2_2 TEXT,
    banking_loyalty_cvv2_3 TEXT,

    banking_loyalty_pin BOOLEAN DEFAULT FALSE,
    banking_loyalty_pin_1 VARCHAR(50),
    banking_loyalty_pin_2 TEXT,
    banking_loyalty_pin_3 TEXT,

    banking_loyalty_card_number BOOLEAN DEFAULT FALSE,
    banking_loyalty_card_number_1 VARCHAR(50),
    banking_loyalty_card_number_2 TEXT,
    banking_loyalty_card_number_3 TEXT,

    banking_loyalty_cpg_version BOOLEAN DEFAULT FALSE,
    banking_loyalty_cpg_version_1 VARCHAR(50),
    banking_loyalty_cpg_version_2 TEXT,
    banking_loyalty_cpg_version_3 TEXT,

    banking_loyalty_chip BOOLEAN DEFAULT FALSE,
    banking_loyalty_chip_1 VARCHAR(50),
    banking_loyalty_chip_2 TEXT,
    banking_loyalty_chip_3 TEXT,

    banking_loyalty_expiry BOOLEAN DEFAULT FALSE,
    banking_loyalty_expiry_1 VARCHAR(50),
    banking_loyalty_expiry_2 DATE,
    banking_loyalty_expiry_3 DATE,

    banking_loyalty_qrcode BOOLEAN DEFAULT FALSE,
    banking_loyalty_qrcode_1 VARCHAR(50),
    banking_loyalty_qrcode_2 TEXT,
    banking_loyalty_qrcode_3 TEXT,

    banking_loyalty_cardholder BOOLEAN DEFAULT FALSE,
    banking_loyalty_cardholder_1 VARCHAR(50),
    banking_loyalty_cardholder_2 TEXT,
    banking_loyalty_cardholder_3 TEXT,

    banking_loyalty_running_number BOOLEAN DEFAULT FALSE,
    banking_loyalty_running_number_1 VARCHAR(50),
    banking_loyalty_running_number_2 TEXT,
    banking_loyalty_running_number_3 TEXT,

    banking_loyalty_valid_thru BOOLEAN DEFAULT FALSE,
    banking_loyalty_valid_thru_1 VARCHAR(50),
    banking_loyalty_valid_thru_2 TEXT,
    banking_loyalty_valid_thru_3 TEXT,

    banking_loyalty_barcode BOOLEAN DEFAULT FALSE,
    banking_loyalty_barcode_1 VARCHAR(50),
    banking_loyalty_barcode_2 TEXT,
    banking_loyalty_barcode_3 TEXT,
    banking_loyalty_photo_color BOOLEAN DEFAULT FALSE,
    banking_loyalty_photo_back_white BOOLEAN DEFAULT FALSE,
    banking_loyalty_other TEXT,

    perso_detail_telecom TEXT[],

    telecom_iccid BOOLEAN DEFAULT FALSE,
    telecom_iccid_1 VARCHAR(50),
    telecom_iccid_2 TEXT,
    telecom_iccid_3 TEXT,

    telecom_msisdn BOOLEAN DEFAULT FALSE,
    telecom_msisdn_1 VARCHAR(50),
    telecom_msisdn_2 TEXT,
    telecom_msisdn_3 TEXT,

    telecom_expiry BOOLEAN DEFAULT FALSE,
    telecom_expiry_1 VARCHAR(50),
    telecom_expiry_2 DATE,
    telecom_expiry_3 DATE,

    telecom_serial_name BOOLEAN DEFAULT FALSE,
    telecom_serial_name_1 VARCHAR(50),
    telecom_serial_name_2 TEXT,
    telecom_serial_name_3 TEXT,

    telecom_overprint BOOLEAN DEFAULT FALSE,
    telecom_overprint_1 VARCHAR(50),
    telecom_overprint_2 TEXT,
    telecom_overprint_3 TEXT,

    telecom_barcode BOOLEAN DEFAULT FALSE,
    telecom_barcode_1 VARCHAR(50),
    telecom_barcode_2 TEXT,
    telecom_barcode_3 TEXT,

    telecom_qrcode BOOLEAN DEFAULT FALSE,
    telecom_qrcode_1 VARCHAR(50),
    telecom_qrcode_2 TEXT,
    telecom_qrcode_3 TEXT,

    telecom_running_number BOOLEAN DEFAULT FALSE,
    telecom_running_number_1 VARCHAR(50),
    telecom_running_number_2 TEXT,
    telecom_running_number_3 TEXT,

    telecom_chip BOOLEAN DEFAULT FALSE,
    telecom_chip_1 VARCHAR(50),
    telecom_chip_2 TEXT,
    telecom_chip_3 TEXT,

    telecom_pin BOOLEAN DEFAULT FALSE,
    telecom_pin_1 VARCHAR(50),
    telecom_pin_2 TEXT,
    telecom_pin_3 TEXT,

    telecom_puk BOOLEAN DEFAULT FALSE,
    telecom_puk_1 VARCHAR(50),
    telecom_puk_2 TEXT,
    telecom_puk_3 TEXT,
    telecom_other TEXT,
    lastedit TEXT,

    remarks_details TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- Example of how to insert data into the table
INSERT INTO card_info (process, development_type, card_type)
VALUES (
    ARRAY['CP, SB'], -- Example JSONB data for process
    'New Product',
    'Non-Financial'
);

INSERT INTO card_info (process, development_type, development_type_reorder_oc_no)
VALUES (
    ARRAY['CP, SB, Supplier'],
    'Re-Order',
    '012596'
);

INSERT INTO card_info (process, development_type, development_type_refer_artwork_oc)
VALUES (
    ARRAY['CP'],
    'Refer Artwork',
    'A001'
);

INSERT INTO card_info (process, development_type, card_type, card_usage_type)
VALUES (
    ARRAY['CP, Supplier'],
    'New Product',
    'Financial',
    'Credit'
);

-- Query to view all data
SELECT * FROM card_info;
