<!-- Contact form - start -->
<style>
   .get-in-touch {
    max-width: 800px;
    margin: 50px auto;
    position: relative;
  
}
.get-in-touch .title {
text-align: center;
text-transform: uppercase;
letter-spacing: 3px;
font-size: 3.2em;
line-height: 48px;
padding-bottom: 48px;
    color: #5543ca;
    background: #5543ca;
    background: -moz-linear-gradient(left,#f4524d  0%,#5543ca 100%) !important;
    background: -webkit-linear-gradient(left,#f4524d  0%,#5543ca 100%) !important;
    background: linear-gradient(to right,#f4524d  0%,#5543ca  100%) !important;
    -webkit-background-clip: text !important;
    -webkit-text-fill-color: transparent !important;
}

.contact-form .form-field {
position: relative;
margin: 32px 0;
}
.contact-form .input-text {
display: block;
width: 100%;
height: 36px;
border-width: 0 0 2px 0;
border-color: #000;
font-size: 18px;
line-height: 26px;
font-weight: 400;
background-color: transparent;
color: #000;
}
.contact-form .input-text:focus {
outline: none;
}
.contact-form .input-text:focus + .label,
.contact-form .input-text.not-empty + .label {
-webkit-transform: translateY(-24px);
        transform: translateY(-24px);
}
.contact-form .label {
position: absolute;
left: 20px;
bottom: 11px;
font-size: 18px;
line-height: 26px;
font-weight: 400;
color: #000;
cursor: text;
transition: -webkit-transform .2s ease-in-out;
transition: transform .2s ease-in-out;
transition: transform .2s ease-in-out, 
-webkit-transform .2s ease-in-out;
}
.contact-form .submit-btn {
display: inline-block;
background-color: #000;
    background-image: linear-gradient(125deg,#a72879,#064497);
color: #000;
text-transform: uppercase;
letter-spacing: 2px;
font-size: 16px;
padding: 8px 16px;
border: none;
width:200px;
cursor: pointer;
}
</style>
<div class="contact-form row modulopsd2-bg col-lg-8 col-12 mb-4 mt-4 text-start">
      <div class="form-field col-lg-6 col-12">
      <label class="label" for="name">Nome</label>
         <input id="name" class="input-text js-input" type="text" required>
      </div>
      <div class="form-field col-lg-6 col-12">
      <label class="label" for="chi-sei">Cognome</label>
      <input id="cognome" class="input-text js-input" type="text" required>
      </div>
      <div class="form-field col-lg-6 col-12">
      <label class="label" for="email">E-mail</label>
         <input id="email" class="input-text js-input" type="email" required>
      </div>
       <div class="form-field col-lg-6 col-12">
       <label class="label" for="phone">Numero di telefono</label>
         <input id="phone" class="input-text js-input" type="text" required>
      </div>
      <div class="col-12">
      <div class="privacybox">
        
        <div class="check-item"><span class="wpcf7-form-control-wrap privacyPolicy"><span class="wpcf7-form-control wpcf7-acceptance"><span class="wpcf7-list-item"><input type="checkbox" name="privacyPolicy" value="1" aria-invalid="false"></span></span></span> <span>Ho preso visione dell' <a href="/informative-e-privacy/richiesta-di-contatto/" target="_blank" class="exclude">informativa</a>  sul trattamento dei dati personali.</span></div>
        <div class="check-item"><span class="wpcf7-form-control-wrap newsletter"><span class="wpcf7-form-control wpcf7-acceptance"><span class="wpcf7-list-item"><input type="checkbox" name="newsletter" value="1" aria-invalid="false"></span></span></span> <span>Presto il consenso all’invio di newsletter - Finalità (b).</span></div>
        <div class="check-item" style="margin-bottom:0;"><span class="wpcf7-form-control-wrap offeredServices"><span class="wpcf7-form-control wpcf7-acceptance"><span class="wpcf7-list-item"><input type="checkbox" name="offeredServices" value="1" aria-invalid="false"></span></span></span> <span>Presto il consenso all’invio comunicazioni sui servizi offerti dalla piattaforma - Finalità (c).</span></div>
        <div class="go-rec"><small>This site is protected by reCAPTCHA and the Google <a href="https://policies.google.com/privacy">Privacy Policy</a> and <a href="https://policies.google.com/terms">Terms of Service</a> apply.</small></div>
        
                </div>
      </div>
      <div class="form-field col-lg-12">
        <a href="#" class="cta-white" style="margin-left:0;">
            <ul>
                <li style="width:37px"><img src="<?php echo get_template_directory_uri(); ?>/icons/send.svg" class="send"></li>
                <li style="width:100%;line-height: 33px;">Invia la tua richiesta</li>
                <li style="width:20px"><img src="<?php echo get_template_directory_uri(); ?>/icons/right-arrow.svg" class="right-arrow"></li>
            </ul>
        </a>
      </div>
</div>
<!-- Contact form - end -->