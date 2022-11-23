<?php

class Faire_Commons {

    public static function plugin_activation() {
        add_option('Faire_Activated', "true");
        add_option('Faire_Debug', "true");
        add_option('Faire_Url', 'https://platform-dev.faire.ai');
        add_option('Faire_Client_ID', 'investimento-digitale-development');
        add_option('Faire_Client_Secret', '2cef64f1-cd3e-41f2-82f5-6f2e7510152a');
        add_option('Faire_OnSuccessUrl', 'index.php/success');
        add_option('Faire_OnFailureUrl', 'index.php/failure');
        add_option('Faire_KpiUrl', 'index.php/faire-person-kpis.php');
        add_option('Faire_KpiList', 'MICROLOAN_AFFORDABILITY_RANGES;MORTGAGE_AFFORDABILITY_RANGES;AFFORDABILITY_MONTHLY_SUM_MEAN_3MO');
        add_option('Faire_KpiIterations', '10');
        add_option('Faire_KpiSleep', '10');

        update_option('Faire_Activated', "true");
    }
    
    public static function plugin_deactivation() {
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-ajax.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-shortcodes.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-restapi-exporter.php');

        Faire_Ajax::unload();
        Faire_ShortCodes::unload();
        Faire_Rest_Exporter_Controller::unload();

        update_option('Faire_Activated', "false");
    }
    
    public static function plugin_uninstall() {
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');

        self::plugin_deactivation();
        Faire_Database::unload();

        delete_option('Faire_Activated');
        delete_option('Faire_Debug');
        delete_option('Faire_Url');
        delete_option('Faire_Client_ID');
        delete_option('Faire_Client_Secret');
        delete_option('Faire_OnSuccessUrl');
        delete_option('Faire_OnFailureUrl');
        delete_option('Faire_KpiUrl');
        delete_option('Faire_KpiList');
        delete_option('Faire_KpiIterations');
        delete_option('Faire_KpiSleep');
    }

    public static function get_boolean_option($option) {
        return get_option($option) === "true";
    }

    public static function LogMessage($msg, $level='i') {
        switch (strtolower($level)) {
            case 'e':
            case 'error':
                $level='ERROR';
                break;
            case 'w':
                case 'warning':
                    $level='WARNING';
                    break;
            case 'i':
            case 'info':
                $level='INFO';
                break;
            case 'd':
            case 'debug':
                $level='DEBUG';
                break;
            default:
                $level='INFO';
        }

        $text_error = date("[Y-m-d H:i:s]")." [".$level."] ->\t".$msg."\n";
        error_log($text_error, 3, FAIRE__PLUGIN_DIR . '/faire-financial.log');
    }

    public static function create_guid() {
        $guid = '';
        $namespace = rand(11111, 99999);
        $uid = uniqid('', true);
        $data = $namespace;
        $data .= $_SERVER['REQUEST_TIME'];
        $data .= $_SERVER['HTTP_USER_AGENT'];
        $data .= $_SERVER['REMOTE_ADDR'];
        $data .= $_SERVER['REMOTE_PORT'];
        $hash = strtoupper(hash('ripemd128', $uid . $guid . md5($data)));
        $guid = substr($hash,  0,  8) . '-' .
                substr($hash,  8,  4) . '-' .
                substr($hash, 12,  4) . '-' .
                substr($hash, 16,  4) . '-' .
                substr($hash, 20, 12);
        return $guid;
    }

    public static function parseDbPerson($dbPerson)
    {
        $person = array();
        $person["personId"] = $dbPerson->personId;    //*
        $person["firstName"] = $dbPerson->firstName;    //*
        $person["lastName"] = $dbPerson->lastName;    //*
        $person["emailAddress"] = $dbPerson->emailAddress;    //*
        $person["dateOfBirth"] = $dbPerson->dateOfBirth;   //*     YYYY-MM-DD
        $person["placeOfBirth"] = array
        (
            "city" => $dbPerson->placeOfBirth_city,    //*
            "country" => $dbPerson->placeOfBirth_country      //*
        );
        $person["citizenship"] = $dbPerson->citizenship;   //*
        $person["fiscalCode"] = $dbPerson->fiscalCode;   //*
        $person["gender"] = $dbPerson->gender == "M" ? "MALE" : "FEMALE";   //*
        $person["phoneNumber"] = !isset($dbPerson->phoneNumber) || empty($dbPerson->phoneNumber) ? null : $dbPerson->phoneNumber;
        $person["homeAddress"] = array
        (
            "line1" => $dbPerson->homeAddress_street,   //*
            "postalCode" => $dbPerson->homeAddress_postalCode,   //*
            "city" => $dbPerson->homeAddress_city,   //*
            "country" => $dbPerson->homeAddress_country,   //*
            "state" => $dbPerson->homeAddress_state,   //*
            "line2" => null
        );
        if(isset($dbPerson->domicileAddress_street) && !empty(trim($dbPerson->domicileAddress_street))) {
            $person["domicileAddress"] = array
            (
                "line1" => $dbPerson->domicileAddress_street,
                "postalCode" => $dbPerson->domicileAddress_postalCode,
                "city" => $dbPerson->domicileAddress_city,
                "country" => $dbPerson->domicileAddress_country,
                "state" => $dbPerson->domicileAddress_state,
                "line2" => null
            );
        }

        return $person;
    }
}

?>