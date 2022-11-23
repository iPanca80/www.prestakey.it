<?php

class Faire_Rest_Exporter_Controller extends WP_REST_Controller {

	public static function init() {
		$instance = new self();
        add_action('rest_api_init', array($instance, 'register_routes'));
	}

    public static function unload() {
		$instance = new self();
        remove_action('rest_api_init', array($instance, 'register_routes'));
    }

    public function register_routes() {

		$namespace = 'faire/exporter';
		$rest_base = '/bamado';

		register_rest_route(
			$namespace,
			$rest_base . '/persons',
			array(
				array(
					'methods'             => WP_REST_Server::READABLE,
					'callback'            => array($this, 'get_faire_persons'),
					'permission_callback' => array($this, 'get_faire_persons_permissions_check'),
					'args'                => $this->get_persons_collection_params(),
				)
			)
		);

		register_rest_route(
			$namespace,
			$rest_base . '/person/accountids',
			array(
				array(
					'methods'             => WP_REST_Server::READABLE,
					'callback'            => array($this, 'get_faire_person_accountIds'),
					'permission_callback' => array($this, 'get_faire_person_accountIds_permissions_check'),
					'args'                => $this->get_person_accountIds_collection_params(),
				)
			)
		);

		register_rest_route(
			$namespace,
			$rest_base . '/kpis',
			array(
				array(
					'methods'             => WP_REST_Server::READABLE,
					'callback'            => array($this, 'get_faire_kpis'),
					'permission_callback' => array($this, 'get_faire_kpis_permissions_check'),
					'args'                => $this->get_kpis_collection_params(),
				)
			)
		);
    }

	private function get_faire_permissions_check($request) {
		// if(array_key_exists("x_faire_auth", $request->get_headers())) {
		// 	$authHeader = $request->get_headers()["x_faire_auth"];
		// 	if(isset($authHeader)) {
		// 		$authCode = $request->get_headers()["x_faire_auth"][0];
		// 		if($authCode === "ciccio") {
		// 			return true;
		// 		}
				
		// 		return new WP_Error('Faire_Rest_Exporter_Controller_Permissions_ERROR', 'You are not authorized!', array('status' => rest_authorization_required_code()));
		// 	}
		// 	else {
		// 		return new WP_Error('Faire_Rest_Exporter_Controller_Permissions_ERROR', 'You are not authorized!', array('status' => rest_authorization_required_code()));
		// 	}
		// }
		// else {
		// 	return new WP_Error('Faire_Rest_Exporter_Controller_Permissions_ERROR', 'You are not authorized!', array('status' => rest_authorization_required_code()));
		// }

		return true;
	}

	/* PERSON FUNCTIONS */

	public function get_faire_persons($request) {
		require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
		require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');
		
		try {
			$data = Faire_Database::GetPersonsNotExported();
			foreach($data as $person) {
				Faire_Database::Faire_SetPersonAsExported($person->id);
			}

			return new WP_REST_Response($data, 200);
		}
		catch (Exception $ex) {
            Faire_Commons::LogMessage($ex->getMessage(), 'e');
            return new WP_Error('Faire_Rest_Exporter_Controller_get_faire_persons_ERROR', $ex->getMessage(), array('status' => 404) );
        }
	}

	public function get_faire_persons_permissions_check($request) {
		return $this->get_faire_permissions_check($request);
	}

	public function get_persons_collection_params() {
		return array();
	}


	/* PERSON ACCOUNT IDS FUNCTIONS */

	public function get_faire_person_accountIds($request) {
		require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
		require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');
		
		try {
			$data = Faire_Database::GetPersonAccountIdsNotExported();
			foreach($data as $personAccountId) {
				Faire_Database::Faire_SetPersonAccountIdAsExported($personAccountId->id);
			}

			return new WP_REST_Response($data, 200);
		}
		catch (Exception $ex) {
            Faire_Commons::LogMessage($ex->getMessage(), 'e');
            return new WP_Error('Faire_Rest_Exporter_Controller_get_faire_person_accountIds_ERROR', $ex->getMessage(), array('status' => 404) );
        }
	}

	public function get_faire_person_accountIds_permissions_check($request) {
		return $this->get_faire_permissions_check($request);
	}

	public function get_person_accountIds_collection_params() {
		return array();
	}


	/* KPI FUNCTIONS */

	public function get_faire_kpis($request) {
		require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
		require_once(FAIRE__PLUGIN_DIR . 'class.faire-commons.php');
		
		try {
			$data = Faire_Database::GetKpisNotExported();
			foreach($data as $kpi) {
				Faire_Database::Faire_SetKpiAsExported($kpi->id);
			}

			return new WP_REST_Response($data, 200);
		}
		catch (Exception $ex) {
            Faire_Commons::LogMessage($ex->getMessage(), 'e');
            return new WP_Error('Faire_Rest_Exporter_Controller_get_faire_kpis_ERROR', $ex->getMessage(), array('status' => 404) );
        }
	}

	public function get_faire_kpis_permissions_check($request) {
		return $this->get_faire_permissions_check($request);
	}

	public function get_kpis_collection_params() {
		return array();
	}
}

?>