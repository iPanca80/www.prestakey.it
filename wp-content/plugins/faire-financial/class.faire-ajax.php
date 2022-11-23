<?php

class Faire_Ajax {

    public static function init() {
        add_action('wp_ajax_nopriv_faire_register_and_connect_person', array('Faire_Ajax', 'faire_register_and_connect_person'));
		add_action('wp_ajax_faire_register_and_connect_person', array('Faire_Ajax', 'faire_register_and_connect_person'));

        add_action('wp_ajax_nopriv_faire_check_person_connections', array('Faire_Ajax', 'faire_check_person_connections'));
		add_action('wp_ajax_faire_check_person_connections', array('Faire_Ajax', 'faire_check_person_connections'));

        add_action('wp_ajax_nopriv_faire_get_person_kpis', array('Faire_Ajax', 'faire_get_person_kpis'));
		add_action('wp_ajax_faire_get_person_kpis', array('Faire_Ajax', 'faire_get_person_kpis'));
	}

    public static function unload() {
        remove_action('wp_ajax_nopriv_faire_register_and_connect_person', array('Faire_Ajax', 'faire_register_and_connect_person'));
        remove_action('wp_ajax_faire_register_and_connect_person', array('Faire_Ajax', 'faire_register_and_connect_person'));

        remove_action('wp_ajax_nopriv_faire_check_person_connections', array('Faire_Ajax', 'faire_check_person_connections'));
		remove_action('wp_ajax_faire_check_person_connections', array('Faire_Ajax', 'faire_check_person_connections'));

        remove_action('wp_ajax_nopriv_faire_get_person_kpis', array('Faire_Ajax', 'faire_get_person_kpis'));
		remove_action('wp_ajax_faire_get_person_kpis', array('Faire_Ajax', 'faire_get_person_kpis'));
    }

    public static function faire_register_and_connect_person(){
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-webapi.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        try {
            if(!Faire_Commons::get_boolean_option("Faire_Activated"))
                throw new Exception("Faire Plugin not activated!");

            $person = array();
            $person["personId"] = Faire_Commons::create_guid();   //*
            $person["firstName"] = strtoupper(trim($_REQUEST['firstName']));   //*
            $person["lastName"] = strtoupper(trim($_REQUEST['lastName']));   //*
            $person["emailAddress"] = strtoupper(trim($_REQUEST['emailAddress']));   //*
            $person["dateOfBirth"] = trim($_REQUEST['dateOfBirth']);   //*     VERIFICARE SE C'E' DA FARE PARSING PER AVERE YYYY-MM-DD
            $person["placeOfBirth"] = array
            (
                "city" => strtoupper(trim($_REQUEST['placeOfBirth_city'])),    //*
                "country" => $_REQUEST['placeOfBirth_country']      //*
            );
            $person["citizenship"] = $_REQUEST['citizenship'];   //*
            $person["fiscalCode"] = strtoupper(trim($_REQUEST['fiscalCode']));   //*
            $person["gender"] = $_REQUEST['gender'];   //*
            $person["phoneNumber"] = $_REQUEST['phoneNumber'] === null || trim($_REQUEST['phoneNumber']) === '' ? null : "+39" . trim($_REQUEST['phoneNumber']);
            $person["homeAddress"] = array
            (
                "street" => strtoupper(trim($_REQUEST['homeAddress_street'])),   //*
                "postalCode" => trim($_REQUEST['homeAddress_postalCode']),   //*
                "city" => strtoupper(trim($_REQUEST['homeAddress_city'])),   //*
                "country" => $_REQUEST['homeAddress_country'],   //*
                "state" => strtoupper(trim($_REQUEST['homeAddress_state'])),   //*
                "line2" => null
            );
            if($_REQUEST['domicileAddress_street'] !== null && trim($_REQUEST['domicileAddress_street']) !== '') {
                $person["domicileAddress"] = array
                (
                    "line1" => strtoupper(trim($_REQUEST['domicileAddress_street'])),
                    "postalCode" => trim($_REQUEST['domicileAddress_postalCode']),
                    "city" => strtoupper(trim($_REQUEST['domicileAddress_city'])),
                    "country" => $_REQUEST['domicileAddress_country'],
                    "state" => Faire_Database::Get_StateName($_REQUEST['domicileAddress_country']),
                    "line2" => null
                );
            }

            $personId = null;
            $dbPerson = Faire_Database::Faire_GetPersonByFiscalCode($person["fiscalCode"]);
            if($dbPerson == null) {
                $dbPerson = Faire_Database::Faire_CreatePerson($person);
                try {
                    $personId = Faire_WebApi::Faire_CreatePerson(Faire_Commons::parseDbPerson($dbPerson));
                }
                catch (Exception $ex)
                {
                    Faire_Database::Faire_DeletePerson($person["personId"]);
                    throw $ex;
                }
            }
            else {
                $parsedPerson = Faire_Commons::parseDbPerson($dbPerson);
                $personId = $parsedPerson["personId"];
                try {
                    Faire_WebApi::Faire_GetPerson($personId);
                }
                catch (Exception $ex) {
                    Faire_WebApi::Faire_CreatePerson($parsedPerson);
                }
            }

            $resp = Faire_WebApi::Faire_CreateAccountConnection($personId);
            setcookie("ACT_CONN_ID_".$resp["personId"], $resp["accountConnectionId"], time()+60*60*24); //Validità un giorno

            $json_success = array(
                'faire_redirect' => $resp["connectionLink"]
            );
            wp_send_json_success($json_success);
        }
        catch (Exception $ex) {
            Faire_Commons::LogMessage($ex->getMessage(), 'e');

            $json_error = array(
                'error' => $ex->getMessage()
            );
            wp_send_json_error($json_error);
        }
    }

    public static function faire_check_person_connections(){
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-webapi.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        try {
            if(!Faire_Commons::get_boolean_option("Faire_Activated"))
                throw new Exception("Faire Plugin not activated!");

            $personId = $_REQUEST['personId'];
            $accountConnectionId = null;
            if(isset($_COOKIE["ACT_CONN_ID_".$personId]) && !empty($_COOKIE["ACT_CONN_ID_".$personId])) {
                $accountConnectionId = $_COOKIE["ACT_CONN_ID_".$personId];
            }
            else {
                $accountConnectionId = Faire_webApi::GetLastAccountConnectionId($personId);
            }

            if($accountConnectionId !== null && trim($accountConnectionId) !== '') {
                $resp = Faire_WebApi::Faire_GetAccountConnection($accountConnectionId);

                if($resp["status"] == "EXPIRED") {
                    $resp = Faire_WebApi::Faire_CreateAccountConnection($personId);
                    setcookie("ACT_CONN_ID_".$resp["personId"], $resp["accountConnectionId"], time()+60*60*24, '/; samesite=none'); //Validità un giorno

                    $json_success = array(
                        'status' => $resp["status"]
                    );
                    wp_send_json_success($json_success);
                }
                else if($resp["status"] == "FAILED") {
                    $json_error = array(
                        'error' => "CONNESSIONE FALLITA. NECESSARIO EFFETTUARE NUOVAMENTE LA REGISTRAZIONE"
                    );
                    wp_send_json_error($json_error);
                }
                else {
                    $connectedAccounts = array();

                    if($resp["status"] == "COMPLETED") {
                        foreach($resp["connectedAccounts"] as $accountObj) {
                            array_push($connectedAccounts, $accountObj["accountId"]);
                            Faire_Database::Faire_AddPersonAccountIds($resp["personId"], $accountConnectionId, $accountObj["accountId"]);
                        }

                        setcookie("ACT_IDS_".$resp["personId"], implode(";", $connectedAccounts), time()+60*60*24); //Validità un giorno
                    }

                    $json_success = array(
                        'status' => $resp["status"],
                        'kpis_page' => site_url(get_option('Faire_KpiUrl')) . '?personId=' . $_REQUEST['personId']
                    );
                    wp_send_json_success($json_success);
                }
            }
            else {
                $json_error = array(
                    'error' => "NESSUN ACCOUNT CONNECTION ID TROVATO. NECESSARIO EFFETTUARE NUOVAMENTE LA REGISTRAZIONE"
                );
                wp_send_json_error($json_error);
            }
        }
        catch (Exception $ex) {
            Faire_Commons::LogMessage($ex->getMessage(), 'e');

            $json_error = array(
                'error' => $ex->getMessage()
            );
            wp_send_json_error($json_error);
        }
    }

    public static function faire_get_person_kpis(){
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-webapi.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        try {
            if(!Faire_Commons::get_boolean_option("Faire_Activated"))
                throw new Exception("Faire Plugin not activated!");

            $personId = $_REQUEST['personId'];
            $accountIds = null;

            if(isset($_COOKIE["ACT_IDS_".$personId]) && !empty($_COOKIE["ACT_IDS_".$personId])) {
                $accountIds = explode(";", $_COOKIE["ACT_IDS_".$personId]);
            }
            else {
                $accountIds = Faire_Database::Faire_GetLastPersonAccountIds($personId);
            }

            if($accountIds !== null) {
                $kpiNames = explode(";", get_option("Faire_KpiList"));
                $kpisOK = array();
                $kpisKO = array();
                $kpiResponses = array();

                foreach($kpiNames as $kpiName) {
                    $kpiDetail = Faire_WebApi::Faire_GetKpiDetail($kpiName);
                    if($kpiDetail === null) {
                        Faire_database::Faire_AddKpiResponse($personId, $accountId, $kpiName, 0, "THE KPI \"" . $kpiName . "\" NOT EXISTS");
                        array_push($kpisKO, $kpiName);
                    }
                    else {
                        foreach($accountIds as $accountId) {
                            try {
                                $i = 0;
                                $kpiResp = null;
                                $iterations = intval(get_option("Faire_KpiIterations"));

                                while($i < $iterations) {
                                    $kpiResp = Faire_WebApi::Faire_GetPersonAccountKpi($personId, $accountId, $kpiName);
                                    if($kpiResp["status"] == "ALL_DATA_PROCESSED") {
                                        Faire_database::Faire_AddKpiResponse($personId, $accountId, $kpiName, 1, json_encode($kpiResp));
                                        $i = $iterations;
                                        array_push($kpisOK, $kpiName);
                                        array_push($kpiResponses, $kpiResp);
                                    }
                                    else {
                                        $i++;
                                        if($i == $iterations) {
                                            Faire_database::Faire_AddKpiResponse($personId, $accountId, $kpiName, 0, json_encode($kpiResp));
                                            array_push($kpisKO, $kpiName);
                                            array_push($kpiResponses, $kpiResp);
                                        }
                                        else {
                                            sleep(intval(get_option("Faire_KpiSleep")));
                                        }
                                    }
                                }
                            }
                            catch(Exception $ex) {
                                Faire_database::Faire_AddKpiResponse($personId, $accountId, $kpiName, 0, $ex->getMessage());
                                array_push($kpisKO, $kpiName);
                            }
                        }
                    }
                }

                $json_success = array(
                    'kpisOK' => implode("\n", array_unique($kpisOK)),
                    'kpisKO' => implode("\n", array_unique($kpisKO)),
                    'kpiResponses' => $kpiResponses
                );
                wp_send_json_success($json_success);
            }
            else {
                $json_error = array(
                    'error' => "NESSUN ACCOUNT ID TROVATO. NECESSARIO EFFETTUARE NUOVAMENTE LA REGISTRAZIONE"
                );
                wp_send_json_error($json_error);
            }
        }
        catch (Exception $ex) {
            Faire_Commons::LogMessage($ex->getMessage(), 'e');

            $json_error = array(
                'error' => $ex->getMessage()
            );
            wp_send_json_error($json_error);
        }
    }
}

?>