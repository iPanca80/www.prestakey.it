<?php

class Faire_ShortCodes {
    
    public static function init() {
		add_shortcode("reg_faire_person_submit", array("Faire_ShortCodes", "register_faire_person"));
        add_shortcode("reg_faire_person_ajax_call", array("Faire_ShortCodes", "register_faire_person_ajax_call"));

        add_shortcode("faire_person_firstname", array("Faire_ShortCodes", "faire_person_firstname"));
        add_shortcode("faire_person_lastname", array("Faire_ShortCodes", "faire_person_lastname"));
        add_shortcode("faire_person_emailaddress", array("Faire_ShortCodes", "faire_person_emailaddress"));
        add_shortcode("faire_person_dateofbirth", array("Faire_ShortCodes", "faire_person_dateofbirth"));
        add_shortcode("faire_person_placeofbirth_city", array("Faire_ShortCodes", "faire_person_placeofbirth_city"));
        add_shortcode("faire_person_placeofbirth_country", array("Faire_ShortCodes", "faire_person_placeofbirth_country"));
        add_shortcode("faire_person_citizenship", array("Faire_ShortCodes", "faire_person_citizenship"));
        add_shortcode("faire_person_fiscalcode", array("Faire_ShortCodes", "faire_person_fiscalcode"));
        add_shortcode("faire_person_gender", array("Faire_ShortCodes", "faire_person_gender"));
        add_shortcode("faire_person_phonenumber", array("Faire_ShortCodes", "faire_person_phonenumber"));
        add_shortcode("faire_person_homeaddress_street", array("Faire_ShortCodes", "faire_person_homeaddress_street"));
        add_shortcode("faire_person_homeaddress_postalcode", array("Faire_ShortCodes", "faire_person_homeaddress_postalcode"));
        add_shortcode("faire_person_homeaddress_city", array("Faire_ShortCodes", "faire_person_homeaddress_city"));
        add_shortcode("faire_person_homeaddress_country", array("Faire_ShortCodes", "faire_person_homeaddress_country"));
        add_shortcode("faire_person_domicileaddress_street", array("Faire_ShortCodes", "faire_person_domicileaddress_street"));
        add_shortcode("faire_person_domicileaddress_postalcode", array("Faire_ShortCodes", "faire_person_domicileaddress_postalcode"));
        add_shortcode("faire_person_domicileaddress_city", array("Faire_ShortCodes", "faire_person_domicileaddress_city"));
        add_shortcode("faire_person_domicileaddress_country", array("Faire_ShortCodes", "faire_person_domicileaddress_country"));

        add_shortcode("faire_polling_accounts", array("Faire_ShortCodes", "register_faire_polling_accounts_ajax_call"));
        add_shortcode("faire_get_person_kpis", array("Faire_ShortCodes", "register_faire_get_kpis_ajax_call"));
	}

    public static function unload(){
        remove_shortcode("reg_faire_person_submit");
        remove_shortcode("reg_faire_person_ajax_call");

        remove_shortcode("faire_person_firstname");
        remove_shortcode("faire_person_lastname");
        remove_shortcode("faire_person_emailaddress");
        remove_shortcode("faire_person_dateofbirth");
        remove_shortcode("faire_person_placeofbirth_city");
        remove_shortcode("faire_person_placeofbirth_country");
        remove_shortcode("faire_person_citizenship");
        remove_shortcode("faire_person_fiscalcode");
        remove_shortcode("faire_person_gender");
        remove_shortcode("faire_person_phonenumber");
        remove_shortcode("faire_person_homeaddress_street");
        remove_shortcode("faire_person_homeaddress_postalcode");
        remove_shortcode("faire_person_homeaddress_city");
        remove_shortcode("faire_person_homeaddress_country"); 
        remove_shortcode("faire_person_domicileaddress_street");
        remove_shortcode("faire_person_domicileaddress_postalcode");
        remove_shortcode("faire_person_domicileaddress_city");
        remove_shortcode("faire_person_domicileaddress_country");

        remove_shortcode("faire_polling_accounts");
        remove_shortcode("faire_get_person_kpis");
    }

    public static function register_faire_person($atts, $value="REGISTRA")
    {
        // example on page -->  [reg_faire_person_submit class="classes" attributes=""]CARICA[/reg_faire_person_submit]
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-submit-person" type="submit" class="faire-reg faire-submit-person '.$class.'" '.$attributes.' onclick="reg_on_faire_person(this)" value="'.$value.'">';
    }

    public static function faire_person_firstname($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-firstname" name="faire-person-firstname" type="text" title="Nome" class="faire-reg faire-person-firstname '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_lastname($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-lastname" name="faire-person-lastname" type="text" title="Cognome" class="faire-reg faire-person-lastname '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_emailaddress($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-emailaddress" name="faire-person-emailaddress" type="text" title="E-Mail" class="faire-reg faire-person-emailaddress '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_dateofbirth($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-dateofbirth" name="faire-person-dateofbirth" type="date" title="Data di Nascita" class="faire-reg faire-person-dateofbirth '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_placeofbirth_city($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-placeofbirth-city" name="faire-person-placeofbirth-city" type="text" title="Comune di  Nascita" class="faire-reg faire-person-placeofbirth-city '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_placeofbirth_country($atts)
    {
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
        $states = Faire_Database::Get_States();

        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
        
        ob_start();
        ?>
            <select id="faire-person-placeofbirth-country" name="faire-person-placeofbirth-country" title="Nazione di Nascita" class="faire-reg faire-person-placeofbirth-country <?php $class ?>" required <?php $attributes ?>>
            <?php
                foreach($states as $state) {
                    $selected = $state->iso_alpha_2_code == "IT" ? " selected" : "";
                    ?><option value="<?php echo $state->iso_alpha_2_code ?>"<?php echo $selected ?>><?php echo $state->name ?></option><?php
                }
            ?>
            </select>
        <?php
        $output = ob_get_contents();
        ob_end_clean();
        return $output;
    }

    public static function faire_person_citizenship($atts)
    {
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
        $states = Faire_Database::Get_States();

        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
        
        ob_start();
        ?>
            <select id="faire-person-citizenship" name="faire-person-citizenship" title="Cittadinanza" class="faire-reg faire-person-citizenship <?php $class ?>" required <?php $attributes ?>>
            <?php
                foreach($states as $state) {
                    $selected = $state->iso_alpha_2_code == "IT" ? " selected" : "";
                    ?><option value="<?php echo $state->iso_alpha_2_code ?>"<?php echo $selected ?>><?php echo $state->name ?></option><?php
                }
            ?>
            </select>
        <?php
        $output = ob_get_contents();
        ob_end_clean();
        return $output;
    }

    public static function faire_person_fiscalcode($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-fiscalcode" name="faire-person-fiscalcode" type="text" title="Codice Fiscale" class="faire-reg faire-person-fiscalcode '.$class.'" pattern="^([A-Za-z]{6}[0-9lmnpqrstuvLMNPQRSTUV]{2}[abcdehlmprstABCDEHLMPRST]{1}[0-9lmnpqrstuvLMNPQRSTUV]{2}[A-Za-z]{1}[0-9lmnpqrstuvLMNPQRSTUV]{3}[A-Za-z]{1})$|([0-9]{11})$" minlength="16" maxlength="16" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_gender($atts)
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
        
        ob_start();
        ?>
            <select id="faire-person-gender" name="faire-person-gender" title="Sesso" class="faire-reg faire-person-gender <?php $class ?>" required <?php $attributes ?>>
                <option value="M">UOMO</option>
                <option value="F">DONNA</option>
            </select>
        <?php
        $output = ob_get_contents();
        ob_end_clean();
        return $output;
    }

    public static function faire_person_phonenumber($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-phonenumber" name="faire-person-phonenumber" type="text" title="Numero di Telefono" class="faire-reg faire-person-phonenumber '.$class.'" '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_homeaddress_street($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-homeaddress-street" name="faire-person-homeaddress-street" type="text" title="Indirizzo di Residenza" class="faire-reg faire-person-homeaddress-street '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_homeaddress_postalcode($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-homeaddress-postalcode" name="faire-person-homeaddress-postalcode" type="text" title="CAP di Residenza" class="faire-reg faire-person-homeaddress-postalcode '.$class.'" pattern="\d{5}" minlength="5" maxlength="5" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_homeaddress_city($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-homeaddress-city" name="faire-person-homeaddress-city" type="text" title="Comune di Residenza" class="faire-reg faire-person-homeaddress-city '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_homeaddress_country($atts)
    {
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
        $states = Faire_Database::Get_States();

        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
        
        ob_start();
        ?>
            <select id="faire-person-homeaddress-country" name="faire-person-homeaddress-country" title="Nazione di Residenza" class="faire-reg faire-person-homeaddress-country <?php $class ?>" required <?php $attributes ?>>
            <?php
                foreach($states as $state) {
                    $selected = $state->iso_alpha_2_code == "IT" ? " selected" : "";
                    ?><option value="<?php echo $state->iso_alpha_2_code ?>"<?php echo $selected ?>><?php echo $state->name ?></option><?php
                }
            ?>
            </select>
        <?php
        $output = ob_get_contents();
        ob_end_clean();
        return $output;
    }

    public static function faire_person_domicileaddress_street($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-domicileaddress-street" name="faire-person-domicileaddress-street" type="text" title="Indirizzo di Domicilio" class="faire-reg faire-person-domicileaddress-street '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_domicileaddress_postalcode($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-domicileaddress-postalcode" name="faire-person-domicileaddress-postalcode" type="text" title="CAP di Domicilio" class="faire-reg faire-person-domicileaddress-postalcode '.$class.'" pattern="\d{5}" minlength="5" maxlength="5" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_domicileaddress_city($atts, $value="")
    {
        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
     
        return 	'<input id="faire-person-domicileaddress-city" name="faire-person-domicileaddress-city" type="text" title="Comune di Domicilio" class="faire-reg faire-person-domicileaddress-city '.$class.'" required '.$attributes.' value="'.$value.'">';
    }

    public static function faire_person_domicileaddress_country($atts)
    {
        require_once(FAIRE__PLUGIN_DIR . 'class.faire-database.php');
        $states = Faire_Database::Get_States();

        extract(
            shortcode_atts(array(
                'class' => '',
                'attributes' => ''
            ), $atts)
        );
        
        ob_start();
        ?>
            <select id="faire-person-domicileaddress-country" name="faire-person-domicileaddress-country" title="Nazione di Domicilio" class="faire-reg faire-person-domicileaddress-country <?php $class ?>" required <?php $attributes ?>>
            <?php
                foreach($states as $state) {
                    $selected = $state->iso_alpha_2_code == "IT" ? " selected" : "";
                    ?><option value="<?php echo $state->iso_alpha_2_code ?>"<?php echo $selected ?>><?php echo $state->name ?></option><?php
                }
            ?>
            </select>
        <?php
        $output = ob_get_contents();
        ob_end_clean();
        return $output;
    }

    public static function register_faire_person_ajax_call($atts)
    {
        extract(
            shortcode_atts(array(
                'timeout' => '10000'
            ), $atts)
        );

        ob_start();
        wp_enqueue_script('jquery');
        ?>
            <script type='text/javascript'>
                function reg_on_faire_person(elem){
                    jQuery.ajax({
                        url: "<?php echo site_url('wp-admin/admin-ajax.php'); ?>",
                        type: "POST",
                        timeout: <?php echo $timeout; ?>,
                        data: {
                            action: 'faire_register_and_connect_person',
                            firstName: jQuery('.faire-person-firstname').length ? jQuery('.faire-person-firstname').val() : null,
                            lastName: jQuery('.faire-person-lastname').length ? jQuery('.faire-person-lastname').val() : null,
                            emailAddress: jQuery('.faire-person-emailaddress').length ? jQuery('.faire-person-emailaddress').val() : null,
                            dateOfBirth: jQuery('.faire-person-dateofbirth').length ? jQuery('.faire-person-dateofbirth').val() : null,
                            placeOfBirth_city: jQuery('.faire-person-placeofbirth-city').length ? jQuery('.faire-person-placeofbirth-city').val() : null,
                            placeOfBirth_country: jQuery('.faire-person-placeofbirth-country').length ? jQuery('.faire-person-placeofbirth-country').val() : null,
                            citizenship: jQuery('.faire-person-citizenship').length ? jQuery('.faire-person-citizenship').val() : null,
                            fiscalCode: jQuery('.faire-person-fiscalcode').length ? jQuery('.faire-person-fiscalcode').val() : null,
                            gender: jQuery('.faire-person-gender').length ? jQuery('.faire-person-gender').val() : null,
                            phoneNumber: jQuery('.faire-person-phonenumber').length ? jQuery('.faire-person-phonenumber').val() : null,
                            homeAddress_street: jQuery('.faire-person-homeaddress-street').length ? jQuery('.faire-person-homeaddress-street').val() : null,
                            homeAddress_postalCode: jQuery('.faire-person-homeaddress-postalcode').length ? jQuery('.faire-person-homeaddress-postalcode').val() : null,
                            homeAddress_city: jQuery('.faire-person-homeaddress-city').length ? jQuery('.faire-person-homeaddress-city').val() : null,
                            homeAddress_country: jQuery('.faire-person-homeaddress-country').length ? jQuery('.faire-person-homeaddress-country').val() : null,
                            homeAddress_state:  jQuery('.faire-person-homeaddress-country').length ? jQuery(".faire-person-homeaddress-country option:selected").text() : null,
                            domicileAddress_street: jQuery('.faire-person-domicileaddress-street').length ? jQuery('.faire-person-domicileaddress-street').val() : null,
                            domicileAddress_postalCode: jQuery('.faire-person-domicileaddress-postalcode').length ? jQuery('.faire-person-domicileaddress-postalcode').val() : null,
                            domicileAddress_city: jQuery('.faire-person-domicileaddress-city').length ? jQuery('.faire-person-domicileaddress-city').val() : null,
                            domicileAddress_country: jQuery('.faire-person-domicileaddress-country').length ? jQuery('.faire-person-domicileaddress-country').val() : null,
                            domicileAddress_state:  jQuery('.faire-person-domicileaddress-country').length ? jQuery(".faire-person-domicileaddress-country option:selected").text() : null
                        },
                        success: function (response, textStatus, jqXHR) {
                            if(response.success) {
                                window.location.replace(response.data.faire_redirect);
                            }
                            else {
                                alert(response.data.error);
                            }
                        },
                        error: function(response, textStatus, errorThrown) {
                            alert(textStatus + " - " + errorThrown);
                        }
                    });
                }
            </script>
        <?php
        $output = ob_get_contents();
        ob_end_clean();
        return $output;
    }

    public static function register_faire_polling_accounts_ajax_call($atts)
    {
        extract(
            shortcode_atts(array(
                'timeout' => '10000',
                'polling_time' => '15000'
            ), $atts)
        );

        ob_start();
        wp_enqueue_script('jquery');
        ?>
            <script type='text/javascript'>
                var checkInterval = null;

                jQuery(function() {
                    checkInterval = setInterval(check_faire_connections, <?php echo $polling_time; ?>);
                });

                function get_query(){
                    var url = document.location.href;
                    var qs = url.substring(url.indexOf('?') + 1).split('&');
                    for(var i = 0, result = {}; i < qs.length; i++){
                        qs[i] = qs[i].split('=');
                        result[qs[i][0]] = decodeURIComponent(qs[i][1]);
                    }
                    return result;
                }

                function check_faire_connections() {
                    var personId = get_query()["personId"];
                    jQuery.ajax({
                        url: "<?php echo site_url('wp-admin/admin-ajax.php'); ?>",
                        type: "POST",
                        timeout: <?php echo $timeout; ?>,
                        data: {
                            action: 'faire_check_person_connections',
                            personId: personId
                        },
                        success: function (response, textStatus, jqXHR) {
                            if(response.success) {
                                if(response.data.status === 'COMPLETED') {
                                    clearInterval(checkInterval);
                                    window.location.replace(response.data.kpis_page);
                                }
                                else {
                                    alert(response.data.status);
                                }
                            }
                            else {
                                clearInterval(checkInterval);
                                alert(response.data.error);
                            }
                        },
                        error: function(response, textStatus, errorThrown) {
                            clearInterval(checkInterval);
                            alert(textStatus + " - " + errorThrown);
                        }
                    });
                }
            </script>
        <?php
        $output = ob_get_contents();
        ob_end_clean();
        return $output;
    }

    public static function register_faire_get_kpis_ajax_call($atts)
    {
        extract(
            shortcode_atts(array(
                'timeout' => '600000'
            ), $atts)
        );

        ob_start();
        wp_enqueue_script('jquery');
        ?>
            <script type='text/javascript'>
                jQuery(function() {
                    var personId = get_query()["personId"];
                    jQuery.ajax({
                        url: "<?php echo site_url('wp-admin/admin-ajax.php'); ?>",
                        type: "POST",
                        timeout: <?php echo $timeout; ?>,
                        data: {
                            action: 'faire_get_person_kpis',
                            personId: personId
                        },
                        success: function (response, textStatus, jqXHR) {
                            if(response.success) {
                                if(response.data.kpisKO != '') {
                                    alert("KO -> " + response.data.kpisKO);
                                }

                                var i = 0;
                                var htmlKpis = "<table style='width: 100%; border: 1px solid black; border-collapse: collapse; font-size: 12px;'><caption style='border: 1px solid black; font-size: 30px;'>KPI's</caption><tr>";
                                response.data.kpiResponses.forEach(function(e) {
                                    if(i++ % 2 == 0) {
                                        htmlKpis = htmlKpis + "</tr><tr style='border-top: 3px solid black;'>";
                                    }

                                    var kpiName = e.kpi;
                                    var status = e.status;

                                    if(typeof e.value === 'object' && e.value !== null) {
                                        var accountId = e.value.accountId;
                                        var htmlKpi = "<td style='border: 1px solid black;'><label style='width: 100%; display: inline-block; text-align:center; font-weight: bold;'>" + kpiName + "</label><label style='width: 100%; display: inline-block; text-align:center;'>ACCOUNT ID: " + accountId + "</label><hr/><ul>";
                                        e.value.ranges.forEach(function(ee) {
                                            var kpiData = "Rating: " + ee.rating + " - LowerBound: " + ee.lowerBound + " - UpperBound: " + ee.upperBound;
                                            htmlKpi = htmlKpi + "<li>" + kpiData + "</li>"
                                        });
                                        htmlKpi = htmlKpi + "</ul><hr/><label style='width: 100%; display: inline-block; text-align:center;'>STATUS: " + status + "</td>";
                                    }
                                    else {
                                        var htmlKpi = "<td style='border: 1px solid black;'><label style='width: 100%; display: inline-block; text-align:center; font-weight: bold;'>" + kpiName + "</label><hr/>";
                                        htmlKpi = htmlKpi + "<label style='width: 100%; display: inline-block; text-align:center;'>VALORE: " + e.value + "</label>";
                                        htmlKpi = htmlKpi + "<hr/><label style='width: 100%; display: inline-block; text-align:center;'>STATUS: " + status + "</td>";
                                    }
                                    htmlKpis = htmlKpis + htmlKpi;
                                });
                                htmlKpis = htmlKpis + "</tr></table>";
                                jQuery(htmlKpis).insertAfter(".wp-block-spacer");
                            }
                            else {
                                alert(response.data.error);
                            }
                        },
                        error: function(response, textStatus, errorThrown) {
                            alert(textStatus + " - " + errorThrown);
                        }
                    });
                });

                function get_query(){
                    var url = document.location.href;
                    var qs = url.substring(url.indexOf('?') + 1).split('&');
                    for(var i = 0, result = {}; i < qs.length; i++){
                        qs[i] = qs[i].split('=');
                        result[qs[i][0]] = decodeURIComponent(qs[i][1]);
                    }
                    return result;
                }
            </script>
        <?php
        $output = ob_get_contents();
        ob_end_clean();
        return $output;
    }
}

?>