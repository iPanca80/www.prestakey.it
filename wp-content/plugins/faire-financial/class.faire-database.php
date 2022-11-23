<?php

class Faire_Database {

    public static function init() {
        global $wpdb;

        if(!self::CheckIfTableExists("faire_persons")) {
            $suppress = $wpdb->suppress_errors();
            $wpdb->query("CREATE TABLE `faire_persons` ( `id` int(11) NOT NULL AUTO_INCREMENT, `personId` varchar(100) NOT NULL, `firstName` varchar(100) NOT NULL, `lastName` varchar(100) NOT NULL, `emailAddress` varchar(300) NOT NULL, `dateOfBirth` date NOT NULL, `placeOfBirth_city` varchar(100) NOT NULL, `placeOfBirth_country` char(2) NOT NULL, `citizenship` varchar(50) NOT NULL, `fiscalCode` char(16) NOT NULL, `gender` char(1) NOT NULL, `phoneNumber` varchar(30) DEFAULT NULL, `homeAddress_street` varchar(200) NOT NULL, `homeAddress_postalCode` char(5) NOT NULL, `homeAddress_city` varchar(100) NOT NULL, `homeAddress_country` char(2) NOT NULL, `homeAddress_state` varchar(50) NOT NULL, `domicileAddress_street` varchar(200) DEFAULT NULL, `domicileAddress_postalCode` char(5) DEFAULT NULL, `domicileAddress_city` varchar(100) DEFAULT NULL, `domicileAddress_country` char(2) DEFAULT NULL, `domicileAddress_state` varchar(50) DEFAULT NULL, `timestamp_export` TIMESTAMP DEFAULT NULL, PRIMARY KEY (`id`), UNIQUE KEY `person_id_UNIQUE` (`personId`), UNIQUE KEY `fiscalCode_UNIQUE` (`fiscalCode`), UNIQUE KEY `id_UNIQUE` (`id`)) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4");
            $wpdb->suppress_errors($suppress);
        }

        if(!self::CheckIfTableExists("faire_kpis")) {
            $suppress = $wpdb->suppress_errors();
            $wpdb->query("CREATE TABLE `faire_kpis` (`id` bigint(20) NOT NULL AUTO_INCREMENT, `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, `personId` varchar(100) NOT NULL, `accountId` varchar(100) NOT NULL, `kpiName` varchar(300) NOT NULL, `success` BIT NOT NULL, `response` TEXT NOT NULL, `timestamp_export` TIMESTAMP DEFAULT NULL, PRIMARY KEY (`id`), UNIQUE KEY `id_UNIQUE` (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4");
            $wpdb->suppress_errors($suppress);
        }

        if(!self::CheckIfTableExists("faire_person_account_ids")) {
            $suppress = $wpdb->suppress_errors();
            $wpdb->query("CREATE TABLE `wordpress_602`.`faire_person_account_ids` (`id` INT NOT NULL AUTO_INCREMENT, `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, `personId` VARCHAR(100) NOT NULL, `connectionId` VARCHAR(100) NOT NULL, `accountId` VARCHAR(100) NOT NULL, `timestamp_export` TIMESTAMP DEFAULT NULL, PRIMARY KEY (`id`), UNIQUE INDEX `id_UNIQUE` (`id` ASC)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4");
            $wpdb->suppress_errors($suppress);
        }

        if(!self::CheckIfTableExists("faire_states")) {
            $suppress = $wpdb->suppress_errors();
            $wpdb->query("CREATE TABLE `faire_states` (`id` int(16) NOT NULL AUTO_INCREMENT, `name` varchar(128) DEFAULT NULL, `numeric_code` varchar(4) DEFAULT NULL, `iso_alpha_3_code` varchar(3) DEFAULT NULL, `iso_alpha_2_code` varchar(2) DEFAULT NULL, PRIMARY KEY (`id`), KEY `PRIMARY_KEY` (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=250");
            $wpdb->query("INSERT INTO `faire_states` (`id`, `name`, `numeric_code`, `iso_alpha_3_code`, `iso_alpha_2_code`) VALUES
            (1, 'Afghanistan', '004', 'AFG', 'AF'),
            (2, 'Albania', '008', 'ALB', 'AL'),
            (3, 'Algeria', '012', 'DZA', 'DZ'),
            (4, 'Andorra', '020', 'AND', 'AD'),
            (5, 'Angola', '024', 'AGO', 'AO'),
            (6, 'Anguilla', '660', 'AIA', 'AI'),
            (7, 'Antartide', '010', 'ATA', 'AQ'),
            (8, 'Antigua e Barbuda', '028', 'ATG', 'AG'),
            (9, 'Arabia Saudita', '682', 'SAU', 'SA'),
            (10, 'Argentina', '032', 'ARG', 'AR'),
            (11, 'Armenia', '051', 'ARM', 'AM'),
            (12, 'Aruba', '533', 'ABW', 'AW'),
            (13, 'Australia', '036', 'AUS', 'AU'),
            (14, 'Austria', '040', 'AUT', 'AT'),
            (15, 'Azerbaigian', '031', 'AZE', 'AZ'),
            (16, 'Bahamas', '044', 'BHS', 'BS'),
            (17, 'Bahrein', '048', 'BHR', 'BH'),
            (18, 'Bangladesh', '050', 'BGD', 'BD'),
            (19, 'Barbados', '052', 'BRB', 'BB'),
            (20, 'Belgio', '056', 'BEL', 'BE'),
            (21, 'Belize', '084', 'BLZ', 'BZ'),
            (22, 'Benin', '204', 'BEN', 'BJ'),
            (23, 'Bermuda', '060', 'BMU', 'BM'),
            (24, 'Bhutan', '064', 'BTN', 'BT'),
            (25, 'Bielorussia', '112', 'BLR', 'BY'),
            (26, 'Birmania', '104', 'MMR', 'MM'),
            (27, 'Bolivia', '068', 'BOL', 'BO'),
            (28, 'Bosnia ed Erzegovina', '070', 'BIH', 'BA'),
            (29, 'Botswana', '072', 'BWA', 'BW'),
            (30, 'Brasile', '076', 'BRA', 'BR'),
            (31, 'Brunei', '096', 'BRN', 'BN'),
            (32, 'Bulgaria', '100', 'BGR', 'BG'),
            (33, 'Burkina Faso', '854', 'BFA', 'BF'),
            (34, 'Burundi', '108', 'BDI', 'BI'),
            (35, 'Cambogia', '116', 'KHM', 'KH'),
            (36, 'Camerun', '120', 'CMR', 'CM'),
            (37, 'Canada', '124', 'CAN', 'CA'),
            (38, 'Capo Verde', '132', 'CPV', 'CV'),
            (39, 'Ciad', '148', 'TCD', 'TD'),
            (40, 'Cile', '152', 'CHL', 'CL'),
            (41, 'Cina', '156', 'CHN', 'CN'),
            (42, 'Cipro', '196', 'CYP', 'CY'),
            (43, 'Citt', '336', 'VAT', 'VA'),
            (44, 'Colombia', '170', 'COL', 'CO'),
            (45, 'Comore', '174', 'COM', 'KM'),
            (46, 'Corea del Nord', '408', 'PRK', 'KP'),
            (47, 'Corea del Sud', '410', 'KOR', 'KR'),
            (48, 'Costa d''Avorio', '384', 'CIV', 'CI'),
            (49, 'Costa Rica', '188', 'CRI', 'CR'),
            (50, 'Croazia', '191', 'HRV', 'HR'),
            (51, 'Cuba', '192', 'CUB', 'CU'),
            (52, 'Cura', '531', 'CUW', 'CW'),
            (53, 'Danimarca', '208', 'DNK', 'DK'),
            (54, 'Dominica', '212', 'DMA', 'DM'),
            (55, 'Ecuador', '218', 'ECU', 'EC'),
            (56, 'Egitto', '818', 'EGY', 'EG'),
            (57, 'El Salvador', '222', 'SLV', 'SV'),
            (58, 'Emirati Arabi Uniti', '784', 'ARE', 'AE'),
            (59, 'Eritrea', '232', 'ERI', 'ER'),
            (60, 'Estonia', '233', 'EST', 'EE'),
            (61, 'Etiopia', '231', 'ETH', 'ET'),
            (62, 'Figi', '242', 'FJI', 'FJ'),
            (63, 'Filippine', '608', 'PHL', 'PH'),
            (64, 'Finlandia', '246', 'FIN', 'FI'),
            (65, 'Francia', '250', 'FRA', 'FR'),
            (66, 'Gabon', '266', 'GAB', 'GA'),
            (67, 'Gambia', '270', 'GMB', 'GM'),
            (68, 'Georgia', '268', 'GEO', 'GE'),
            (69, 'Georgia del Sud e isole Sandwich meridionali', '239', 'SGS', 'GS'),
            (70, 'Germania', '276', 'DEU', 'DE'),
            (71, 'Ghana', '288', 'GHA', 'GH'),
            (72, 'Giamaica', '388', 'JAM', 'JM'),
            (73, 'Giappone', '392', 'JPN', 'JP'),
            (74, 'Gibilterra', '292', 'GIB', 'GI'),
            (75, 'Gibuti', '262', 'DJI', 'DJ'),
            (76, 'Giordania', '400', 'JOR', 'JO'),
            (77, 'Grecia', '300', 'GRC', 'GR'),
            (78, 'Grenada', '308', 'GRD', 'GD'),
            (79, 'Groenlandia', '304', 'GRL', 'GL'),
            (80, 'Guadalupa', '312', 'GLP', 'GP'),
            (81, 'Guam', '316', 'GUM', 'GU'),
            (82, 'Guatemala', '320', 'GTM', 'GT'),
            (83, 'Guernsey', '831', 'GGY', 'GG'),
            (84, 'Guinea', '324', 'GIN', 'GN'),
            (85, 'Guinea-Bissau', '624', 'GNB', 'GW'),
            (86, 'Guinea Equatoriale', '226', 'GNQ', 'GQ'),
            (87, 'Guyana', '328', 'GUY', 'GY'),
            (88, 'Guyana francese', '254', 'GUF', 'GF'),
            (89, 'Haiti', '332', 'HTI', 'HT'),
            (90, 'Honduras', '340', 'HND', 'HN'),
            (91, 'Hong Kong', '344', 'HKG', 'HK'),
            (92, 'India', '356', 'IND', 'IN'),
            (93, 'Indonesia', '360', 'IDN', 'ID'),
            (94, 'Iran', '364', 'IRN', 'IR'),
            (95, 'Iraq', '368', 'IRQ', 'IQ'),
            (96, 'Irlanda', '372', 'IRL', 'IE'),
            (97, 'Islanda', '352', 'ISL', 'IS'),
            (98, 'Isola Bouvet', '074', 'BVT', 'BV'),
            (99, 'Isola di Man', '833', 'IMN', 'IM'),
            (100, 'Isola di Natale', '162', 'CXR', 'CX'),
            (101, 'Isola Norfolk', '574', 'NFK', 'NF'),
            (102, 'Isole ', '248', 'ALA', 'AX'),
            (103, 'Isole BES', '535', 'BES', 'BQ'),
            (104, 'Isole Cayman', '136', 'CYM', 'KY'),
            (105, 'Isole Cocos (Keeling)', '166', 'CCK', 'CC'),
            (106, 'Isole Cook', '184', 'COK', 'CK'),
            (108, 'Isole Falkland', '238', 'FLK', 'FK'),
            (109, 'Isole Heard e McDonald', '334', 'HMD', 'HM'),
            (110, 'Isole Marianne Settentrionali', '580', 'MNP', 'MP'),
            (111, 'Isole Marshall', '584', 'MHL', 'MH'),
            (112, 'Isole minori esterne degli Stati Uniti', '581', 'UMI', 'UM'),
            (113, 'Isole Pitcairn', '612', 'PCN', 'PN'),
            (114, 'Isole Salomone', '090', 'SLB', 'SB'),
            (115, 'Isole Vergini britanniche', '092', 'VGB', 'VG'),
            (116, 'Isole Vergini americane', '850', 'VIR', 'VI'),
            (117, 'Israele', '376', 'ISR', 'IL'),
            (118, 'Italia', '380', 'ITA', 'IT'),
            (119, 'Jersey', '832', 'JEY', 'JE'),
            (120, 'Kazakistan', '398', 'KAZ', 'KZ'),
            (121, 'Kenya', '404', 'KEN', 'KE'),
            (122, 'Kirghizistan', '417', 'KGZ', 'KG'),
            (123, 'Kiribati', '296', 'KIR', 'KI'),
            (124, 'Kuwait', '414', 'KWT', 'KW'),
            (125, 'Laos', '418', 'LAO', 'LA'),
            (126, 'Lesotho', '426', 'LSO', 'LS'),
            (127, 'Lettonia', '428', 'LVA', 'LV'),
            (128, 'Libano', '422', 'LBN', 'LB'),
            (129, 'Liberia', '430', 'LBR', 'LR'),
            (130, 'Libia', '434', 'LBY', 'LY'),
            (131, 'Liechtenstein', '438', 'LIE', 'LI'),
            (132, 'Lituania', '440', 'LTU', 'LT'),
            (133, 'Lussemburgo', '442', 'LUX', 'LU'),
            (134, 'Macao', '446', 'MAC', 'MO'),
            (135, 'Macedonia', '807', 'MKD', 'MK'),
            (136, 'Madagascar', '450', 'MDG', 'MG'),
            (137, 'Malawi', '454', 'MWI', 'MW'),
            (138, 'Malesia', '458', 'MYS', 'MY'),
            (139, 'Maldive', '462', 'MDV', 'MV'),
            (140, 'Mali', '466', 'MLI', 'ML'),
            (141, 'Malta', '470', 'MLT', 'MT'),
            (142, 'Marocco', '504', 'MAR', 'MA'),
            (143, 'Martinica', '474', 'MTQ', 'MQ'),
            (144, 'Mauritania', '478', 'MRT', 'MR'),
            (145, 'Mauritius', '480', 'MUS', 'MU'),
            (146, 'Mayotte', '175', 'MYT', 'YT'),
            (147, 'Messico', '484', 'MEX', 'MX'),
            (148, 'Micronesia', '583', 'FSM', 'FM'),
            (149, 'Moldavia', '498', 'MDA', 'MD'),
            (150, 'Mongolia', '496', 'MNG', 'MN'),
            (151, 'Montenegro', '499', 'MNE', 'ME'),
            (152, 'Montserrat', '500', 'MSR', 'MS'),
            (153, 'Mozambico', '508', 'MOZ', 'MZ'),
            (154, 'Namibia', '516', 'NAM', 'NA'),
            (155, 'Nauru', '520', 'NRU', 'NR'),
            (156, 'Nepal', '524', 'NPL', 'NP'),
            (157, 'Nicaragua', '558', 'NIC', 'NI'),
            (158, 'Niger', '562', 'NER', 'NE'),
            (159, 'Nigeria', '566', 'NGA', 'NG'),
            (160, 'Niue', '570', 'NIU', 'NU'),
            (161, 'Norvegia', '578', 'NOR', 'NO'),
            (162, 'Nuova Caledonia', '540', 'NCL', 'NC'),
            (163, 'Nuova Zelanda', '554', 'NZL', 'NZ'),
            (164, 'Oman', '512', 'OMN', 'OM'),
            (165, 'Paesi Bassi', '528', 'NLD', 'NL'),
            (166, 'Pakistan', '586', 'PAK', 'PK'),
            (167, 'Palau', '585', 'PLW', 'PW'),
            (168, 'Palestina', '275', 'PSE', 'PS'),
            (169, 'Panam', '591', 'PAN', 'PA'),
            (170, 'Papua Nuova Guinea', '598', 'PNG', 'PG'),
            (171, 'Paraguay', '600', 'PRY', 'PY'),
            (172, 'Per', '604', 'PER', 'PE'),
            (173, 'Polinesia Francese', '258', 'PYF', 'PF'),
            (174, 'Polonia', '616', 'POL', 'PL'),
            (175, 'Porto Rico', '630', 'PRI', 'PR'),
            (176, 'Portogallo', '620', 'PRT', 'PT'),
            (177, 'Monaco', '492', 'MCO', 'MC'),
            (178, 'Qatar', '634', 'QAT', 'QA'),
            (179, 'Regno Unito', '826', 'GBR', 'GB'),
            (180, 'RD del Congo', '180', 'COD', 'CD'),
            (181, 'Rep. Ceca', '203', 'CZE', 'CZ'),
            (182, 'Rep. Centrafricana', '140', 'CAF', 'CF'),
            (183, 'Rep. del Congo', '178', 'COG', 'CG'),
            (184, 'Rep. Dominicana', '214', 'DOM', 'DO'),
            (185, 'Riunione', '638', 'REU', 'RE'),
            (186, 'Romania', '642', 'ROU', 'RO'),
            (187, 'Ruanda', '646', 'RWA', 'RW'),
            (188, 'Russia', '643', 'RUS', 'RU'),
            (189, 'Sahara Occidentale', '732', 'ESH', 'EH'),
            (190, 'Saint Kitts e Nevis', '659', 'KNA', 'KN'),
            (191, 'Santa Lucia', '662', 'LCA', 'LC'),
            (192, 'Sant''Elena, Ascensione e Tristan da Cunha', '654', 'SHN', 'SH'),
            (193, 'Saint Vincent e Grenadine', '670', 'VCT', 'VC'),
            (194, 'Saint-Barth', '652', 'BLM', 'BL'),
            (195, 'Saint-Martin', '663', 'MAF', 'MF'),
            (196, 'Saint-Pierre e Miquelon', '666', 'SPM', 'PM'),
            (197, 'Samoa', '882', 'WSM', 'WS'),
            (198, 'Samoa Americane', '016', 'ASM', 'AS'),
            (199, 'San Marino', '674', 'SMR', 'SM'),
            (201, 'Senegal', '686', 'SEN', 'SN'),
            (202, 'Serbia', '688', 'SRB', 'RS'),
            (203, 'Seychelles', '690', 'SYC', 'SC'),
            (204, 'Sierra Leone', '694', 'SLE', 'SL'),
            (205, 'Singapore', '702', 'SGP', 'SG'),
            (206, 'Sint Maarten', '534', 'SXM', 'SX'),
            (207, 'Siria', '760', 'SYR', 'SY'),
            (208, 'Slovacchia', '703', 'SVK', 'SK'),
            (209, 'Slovenia', '705', 'SVN', 'SI'),
            (210, 'Somalia', '706', 'SOM', 'SO'),
            (211, 'Spagna', '724', 'ESP', 'ES'),
            (212, 'Sri Lanka', '144', 'LKA', 'LK'),
            (213, 'Stati Uniti', '840', 'USA', 'US'),
            (214, 'Sudafrica', '710', 'ZAF', 'ZA'),
            (215, 'Sudan', '729', 'SDN', 'SD'),
            (216, 'Sudan del Sud', '728', 'SSD', 'SS'),
            (217, 'Suriname', '740', 'SUR', 'SR'),
            (218, 'Svalbard e Jan Mayen', '744', 'SJM', 'SJ'),
            (219, 'Svezia', '752', 'SWE', 'SE'),
            (220, 'Svizzera', '756', 'CHE', 'CH'),
            (221, 'Swaziland', '748', 'SWZ', 'SZ'),
            (222, 'Taiwan', '158', 'TWN', 'TW'),
            (223, 'Tagikistan', '762', 'TJK', 'TJ'),
            (224, 'Tanzania', '834', 'TZA', 'TZ'),
            (225, 'Terre australi e antartiche francesi', '260', 'ATF', 'TF'),
            (226, 'Territorio britannico dell''oceano Indiano', '086', 'IOT', 'IO'),
            (227, 'Thailandia', '764', 'THA', 'TH'),
            (228, 'Timor Est', '626', 'TLS', 'TL'),
            (229, 'Togo', '768', 'TGO', 'TG'),
            (230, 'Tokelau', '772', 'TKL', 'TK'),
            (231, 'Tonga', '776', 'TON', 'TO'),
            (232, 'Trinidad e Tobago', '780', 'TTO', 'TT'),
            (233, 'Tunisia', '788', 'TUN', 'TN'),
            (234, 'Turchia', '792', 'TUR', 'TR'),
            (235, 'Turkmenistan', '795', 'TKM', 'TM'),
            (236, 'Turks e Caicos', '796', 'TCA', 'TC'),
            (237, 'Tuvalu', '798', 'TUV', 'TV'),
            (238, 'Ucraina', '804', 'UKR', 'UA'),
            (239, 'Uganda', '800', 'UGA', 'UG'),
            (240, 'Ungheria', '348', 'HUN', 'HU'),
            (241, 'Uruguay', '858', 'URY', 'UY'),
            (242, 'Uzbekistan', '860', 'UZB', 'UZ'),
            (243, 'Vanuatu', '548', 'VUT', 'VU'),
            (244, 'Venezuela', '862', 'VEN', 'VE'),
            (245, 'Vietnam', '704', 'VNM', 'VN'),
            (246, 'Wallis e Futuna', '876', 'WLF', 'WF'),
            (247, 'Yemen', '887', 'YEM', 'YE'),
            (248, 'Zambia', '894', 'ZMB', 'ZM'),
            (249, 'Zimbabwe', '716', 'ZWE', 'ZW')");
            $wpdb->suppress_errors($suppress);
        }
	}

    public static function unload() {
        // global $wpdb;

        // if(self::CheckIfTableExists("faire_persons")) {
        //     $suppress = $wpdb->suppress_errors();
        //     $wpdb->query("DROP TABLE `faire_persons`");
        //     $wpdb->suppress_errors($suppress);
        // }

        // if(self::CheckIfTableExists("faire_kpis")) {
        //     $suppress = $wpdb->suppress_errors();
        //     $wpdb->query("DROP TABLE `faire_kpis`");
        //     $wpdb->suppress_errors($suppress);
        // }

        // if(self::CheckIfTableExists("faire_person_account_ids")) {
        //     $suppress = $wpdb->suppress_errors();
        //     $wpdb->query("DROP TABLE `faire_person_account_ids`");
        //     $wpdb->suppress_errors($suppress);
        // }

        // if(self::CheckIfTableExists("faire_states")) {
        //     $suppress = $wpdb->suppress_errors();
        //     $wpdb->query("DROP TABLE `faire_states`");
        //     $wpdb->suppress_errors($suppress);
        // }
    }

    public static function Faire_CreatePerson($person) {
        global $wpdb;

        $db_person = self::Faire_GetPersonByFiscalCode($person["fiscalCode"]);
        if($db_person != null)
            return $db_person;
        else {
            $person_values = "'" . $person["personId"] . "', '" . $person["firstName"] . "', '" . $person["lastName"] . "', '" . $person["emailAddress"] . "', '" . $person["dateOfBirth"] . "', '" . $person["placeOfBirth"]["city"] . "', '" . $person["placeOfBirth"]["country"] . "', '" . $person["citizenship"] . "', '" . $person["fiscalCode"] . "', '" . $person["gender"] . "', '" . $person["phoneNumber"] . "', '" . $person["homeAddress"]["street"] . "', '" . $person["homeAddress"]["postalCode"] . "', '" . $person["homeAddress"]["city"] . "', '" . $person["homeAddress"]["country"] . "', '" . $person["homeAddress"]["state"] . "', '" . $person["domicileAddress"]["street"] . "', '" . $person["domicileAddress"]["postalCode"] . "', '" . $person["domicileAddress"]["city"] . "', '" . $person["domicileAddress"]["country"] . "', '" . $person["domicileAddress"]["state"] . "'";

            $suppress = $wpdb->suppress_errors();
            $wpdb->query("INSERT INTO `faire_persons` (personId, firstName, lastName, emailAddress, dateOfBirth, placeOfBirth_city, placeOfBirth_country, citizenship, fiscalCode, gender, phoneNumber, homeAddress_street, homeAddress_postalCode, homeAddress_city, homeAddress_country, homeAddress_state, domicileAddress_street, domicileAddress_postalCode, domicileAddress_city, domicileAddress_country, domicileAddress_state) VALUES (" . $person_values . ")");
            $wpdb->suppress_errors($suppress);

            return self::Faire_GetPersonById($person["personId"]);
        }
    }

    public static function Faire_GetPersonById($personId) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$row      = $wpdb->get_row($wpdb->prepare("SELECT * FROM faire_persons WHERE personId = %s LIMIT 1", $personId));
		$wpdb->suppress_errors($suppress);
        
        if($row == null)
            return null;
        else
            return $row;
    }

    public static function Faire_DeletePerson($personId) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$wpdb->query($wpdb->prepare("DELETE FROM faire_persons WHERE personId = %s", $personId));
		$wpdb->suppress_errors($suppress);
    }

    public static function Faire_GetPersonByFiscalCode($fiscalCode) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$row      = $wpdb->get_row($wpdb->prepare("SELECT * FROM faire_persons WHERE fiscalCode = %s LIMIT 1", $fiscalCode));
		$wpdb->suppress_errors($suppress);

        if($row == null)
            return null;
        else
            return $row;
    }

    public static function GetPersonsNotExported() {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$rows      = $wpdb->get_results("SELECT id, personId, firstName, lastName, emailAddress, dateOfBirth, placeOfBirth_city, placeOfBirth_country, citizenship, fiscalCode, gender, phoneNumber, homeAddress_street, homeAddress_postalCode, homeAddress_city, homeAddress_country, homeAddress_state, domicileAddress_street, domicileAddress_postalCode, domicileAddress_city, domicileAddress_country, domicileAddress_state FROM faire_persons WHERE timestamp_export IS NULL");
		$wpdb->suppress_errors($suppress);

        return $rows;
    }

    public static function Faire_SetPersonAsExported($personId) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
        $wpdb->query("UPDATE `faire_persons` SET timestamp_export = now() WHERE Id = " . $personId . "");
        $wpdb->suppress_errors($suppress);
    }

    public static function Faire_GetPersonAccountIds($personId) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$rows      = $wpdb->get_results($wpdb->prepare("SELECT DISTINCT accountId FROM faire_person_account_ids WHERE personId = %s", $personId));
		$wpdb->suppress_errors($suppress);

        return $rows;
    }

    public static function Faire_GetLastPersonAccountIds($personId) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$rows      = $wpdb->get_results($wpdb->prepare("SELECT accountId FROM faire_person_account_ids WHERE personId = %s AND connectionId = (SELECT connectionId FROM faire_person_account_ids WHERE personId = %s ORDER BY id DESC LIMIT 1)", $personId, $personId));
		$wpdb->suppress_errors($suppress);

        $accountIds = array();
        foreach($rows as $row) {
            array_push($accountIds, $row->accountId);
        }

        return array_unique($accountIds);
    }

    public static function Faire_AddPersonAccountIds($personId, $accountConnectionId, $accountId) {
        global $wpdb;

        $values = "'" . $personId . "', '" . $accountConnectionId . "', '" . $accountId . "'";

        $suppress = $wpdb->suppress_errors();
        $wpdb->query("INSERT INTO `faire_person_account_ids` (personId, connectionId, accountId) SELECT * FROM (SELECT " . $values . ") AS tmp WHERE NOT EXISTS (SELECT * FROM `faire_person_account_ids` WHERE personId = '" . $personId . "' AND connectionId = '" . $accountConnectionId . "' AND accountId = '" . $accountId . "') LIMIT 1");
        $wpdb->suppress_errors($suppress);
    }

    public static function GetPersonAccountIdsNotExported() {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$rows      = $wpdb->get_results("SELECT A.id, A.timestamp, A.personId, A.connectionId, A.accountId FROM faire_person_account_ids A INNER JOIN faire_persons P ON A.personId = P.personId WHERE A.timestamp_export IS NULL AND P.timestamp_export IS NOT NULL");
		$wpdb->suppress_errors($suppress);

        return $rows;
    }

    public static function Faire_SetPersonAccountIdAsExported($personAccountId) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
        $wpdb->query("UPDATE `faire_person_account_ids` SET timestamp_export = now() WHERE Id = " . $personAccountId . "");
        $wpdb->suppress_errors($suppress);
    }

    public static function Faire_AddKpiResponse($personId, $accountId, $kpiName, $success, $kpiResponse) {
        global $wpdb;

        $kpi_values = "'" . $personId . "', '" . $accountId . "', '" . $kpiName . "', " . $success . ", '" . $kpiResponse . "'";

        $suppress = $wpdb->suppress_errors();
        $wpdb->query("INSERT INTO `faire_kpis` (personId, accountId, kpiName, success, response) VALUES (" . $kpi_values . ")");
        $wpdb->suppress_errors($suppress);
    }

    public static function Faire_GetPersonKpis($personId) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$rows     = $wpdb->get_results($wpdb->prepare("SELECT * FROM faire_kpis WHERE personId = %s", $personId));
		$wpdb->suppress_errors($suppress);

        return $rows;
    }

    public static function Faire_GetAllKpis() {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$rows     = $wpdb->get_results("SELECT * FROM faire_kpis");
		$wpdb->suppress_errors($suppress);

        return $rows;
    }

    public static function GetKpisNotExported() {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$rows     = $wpdb->get_results("SELECT K.id, K.timestamp, K.personId, K.accountId, K.kpiName, K.response FROM faire_kpis K INNER JOIN faire_persons P ON K.personId = P.personId WHERE K.timestamp_export IS NULL AND P.timestamp_export IS NOT NULL AND K.success = 1");
		$wpdb->suppress_errors($suppress);

        return $rows;
    }

    public static function Faire_SetKpiAsExported($kpiId) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
        $wpdb->query("UPDATE `faire_kpis` SET timestamp_export = now() WHERE Id = " . $kpiId . "");
        $wpdb->suppress_errors($suppress);
    }

    public static function Get_States() {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$rows     = $wpdb->get_results("SELECT name, iso_alpha_2_code FROM faire_states");
		$wpdb->suppress_errors($suppress);

        return $rows;
    }

    public static function Get_StateName($isoCode) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
		$row     = $wpdb->get_row("SELECT name FROM faire_states WHERE iso_alpha_2_code = '".$isoCode."' LIMIT 1");
		$wpdb->suppress_errors($suppress);

        return $row;
    }

    private static function CheckIfTableExists($tableName) {
        global $wpdb;

        $suppress = $wpdb->suppress_errors();
        $search = $wpdb->get_row($wpdb->prepare("SHOW TABLES LIKE %s", $tableName));
        $wpdb->suppress_errors($suppress);

        if($search == null)
            return false;
        else
            return true;
    }
}

?>