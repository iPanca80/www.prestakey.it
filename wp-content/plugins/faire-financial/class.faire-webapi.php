<?php

/* WEB API DOCUMENTATION: https://platform-dev.faire.ai/docs/ */

class Faire_WebApi {

    public static function Faire_AuthToken() {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Content-Type"] = "application/x-www-form-urlencoded";

        $data = array();
        $data["grant_type"] = "client_credentials";
        $data["client_id"] = get_option('Faire_Client_ID');
        $data["client_secret"] = get_option('Faire_Client_Secret');

        $resp = Requests::post(get_option('Faire_Url') . '/openid-connect/token', $headers, $data, array());
        $data = json_decode($resp->body, true);
        if($resp->success) {
            return $data["access_token"];
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_AuthToken]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_AuthToken]\t" . $data["error"] . ' - ' . $data["error_description"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_CreatePerson($person = array()) {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Content-Type"] = "application/json";
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $json_data = json_encode($person);
        $resp = Requests::post(get_option('Faire_Url') . '/persons', $headers, $json_data, array());
        $data = json_decode($resp->body, true);
        if($resp->success) {
            return $data["personId"];
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_CreatePerson]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_CreatePerson]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_GetAllPersons() {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $resp = Requests::get(get_option('Faire_Url') . '/persons', $headers, array());
        $persons = json_decode($resp->body, true);
        if($resp->success) {
            return $persons["persons"];
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_GetAllPersons]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_GetAllPersons]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_GetPerson($personId) {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $resp = Requests::get(get_option('Faire_Url') . '/persons/' . $personId, $headers, array());
        $person = json_decode($resp->body, true);
        if($resp->success) {
            return $person;
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_GetPerson]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_GetPerson]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_DeletePerson($personId) {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $resp = Requests::delete(get_option('Faire_Url') . '/persons/' . $personId, $headers, array());
        if(!$resp->success) {
            $data = json_decode($resp->body, true);
            $msg = null;
            if($data == null)
                $msg = "[Faire_DeletePerson]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_DeletePerson]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_UpdatePerson($person = array()) {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Content-Type"] = "application/json";
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $json_data = json_encode($person);
        $resp = Requests::put(get_option('Faire_Url') . '/persons/' . $person["personId"], $headers, $json_data, array());
        $data = json_decode($resp->body, true);
        if($resp->success)
        {
            return $data["personId"];
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_UpdatePerson]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_UpdatePerson]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_CreateAccountConnection($personId) {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Content-Type"] = "application/json";
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $data = array();
        $data["personId"] = $personId;

        $data["onSuccessUrl"] = site_url(get_option('Faire_OnSuccessUrl')) . '?personId=' . $personId;
        $data["onFailureUrl"] = site_url(get_option('Faire_OnFailureUrl')) . '?personId=' . $personId;
        if(Faire_Commons::get_boolean_option("Faire_Debug")) {
            $data["onSuccessUrl"] = str_replace("localhost", "127.0.0.1", $data["onSuccessUrl"]);
            $data["onFailureUrl"] = str_replace("localhost", "127.0.0.1", $data["onFailureUrl"]);
        }

        $json_data = json_encode($data);
        $resp = Requests::post(get_option('Faire_Url') . '/account-connections', $headers, $json_data, array());
        $decode_data = json_decode($resp->body, true);
        if($resp->success) {
            return $decode_data;
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_CreateAccountConnection]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_CreateAccountConnection]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_GetAccountConnection($accountConnectionId) {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $resp = Requests::get(get_option('Faire_Url') . '/account-connections/' . $accountConnectionId, $headers, array());
        $data = json_decode($resp->body, true);
        if($resp->success) {
            return $data;
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_GetAccountConnection]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_GetAccountConnection]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_GetAllAccountConnections() {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $resp = Requests::get(get_option('Faire_Url') . '/account-connections', $headers, array());
        $data = json_decode($resp->body, true);
        if($resp->success) {
            return $data["accountConnections"];
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_GetAllAccountConnections]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_GetAllAccountConnections]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }
            
            throw new Exception($msg);
        }
    }

    public static function Faire_GetPersonAccountKpi($personId, $accountId, $kpiName)
    {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

            $headers = array();
            $headers["Accept"] = "application/json";
            $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

            if(!self::IsAccountKpi($kpiName))
                $params['personId'] = $personId;
            else
                $params['accountId'] = $accountId;

            $params['kpi'] = $kpiName;
            $params['includeHistory'] = "false";
            // $params['from'] = date("Y-m-d", mktime(0, 0, 0, 1, 1, date("Y")));
            // $params['to'] = date("Y-m-d");
            // $params['atReferenceDate'] = date("Y-m-d");

            $resp = Requests::get(get_option('Faire_Url') . '/kpis?' . http_build_query($params), $headers, array());
            $data = json_decode($resp->body, true);
            if($resp->success) {
                return $data["kpis"][0];
            }
            else {
                $msg = null;
                if($data == null)
                    $msg = "[Faire_GetKpi]\t" . $resp->raw;
                else {
                    foreach($data["errors"] as $error) {
                        $errorMsg = "[Faire_GetKpi]\t" . $error["code"] . ' - ' . $error["message"];
                        Faire_Commons::LogMessage($errorMsg, 'e');
                        $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                    }
                }
                
                throw new Exception($msg);
            }
    }

    public static function Faire_GetAllKpiNames() {
        require_once(ABSPATH . 'wp-includes/class-requests.php');
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');

        $headers = array();
        $headers["Accept"] = "application/json";
        $headers["Authorization"] = "Bearer " . self::Faire_AuthToken();

        $resp = Requests::get(get_option('Faire_Url') . '/kpis/list', $headers, array());
        $data = json_decode($resp->body, true);
        if($resp->success) {
            return $data["kpis"];
        }
        else {
            $msg = null;
            if($data == null)
                $msg = "[Faire_GetAllKpis]\t" . $resp->raw;
            else {
                foreach($data["errors"] as $error) {
                    $errorMsg = "[Faire_GetAllKpis]\t" . $error["code"] . ' - ' . $error["message"];
                    Faire_Commons::LogMessage($errorMsg, 'e');
                    $msg = $msg . (isset($msg) ? "\n" : "") . $errorMsg;
                }
            }

            throw new Exception($msg);
        }
    }

    public static function Faire_GetKpiDetail($kpiName) {
        $kpis = self::Faire_GetAllKpiNames();
        foreach($kpis as $kpi) {
            if($kpi["name"] === "$kpiName") {
                return $kpi;
            }
        }

        return null;
    }

    public static function IsAccountKpi($kpiName) {
        $kpis = self::Faire_GetAllKpiNames();
        foreach($kpis as $kpi) {
            if($kpi["name"] === "$kpiName") {
                return in_array("ACCOUNT", $kpi["types"]);
            }
        }

        return false;
    }

    public static function GetAllAccountIdConnected($personId) {
        $connections = self::Faire_GetAllAccountConnections();
        $accountIds = array();

        foreach($connections as $connection) {
            if($connection["personId"] === $personId && $connection["status"] === "COMPLETED") {
                foreach($connection["connectedAccounts"] as $connectedAccount) {
                    array_push($accountIds, $connectedAccount["accountId"]);
                }
            }
        }

        return array_unique($accountIds);
    }

    public static function GetLastAccountConnectionId($personId) {
        $connections = self::Faire_GetAllAccountConnections();
        $accountConnectionId = null;

        foreach($connections as $connection) {
            if($connection["personId"] === $personId) {
                $accountConnectionId = $connection["accountConnectionId"];
            }
        }

        return $accountConnectionId;
    }
}

?>