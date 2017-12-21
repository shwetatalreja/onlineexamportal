<html>
<head><meta charset="UTF-8"><title>User Registration</title>
<style >
	/* $Id: $ */
@charset "UTF-8";
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,caption, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	vertical-align: baseline;
}

body {
	background-attachment: fixed;
	color: #444444;
	font: 75%/1.3 Arial, Helvetica, sans-serif;
	margin: 0 auto;
}

input, input[type="text"], input[type="search"], isindex, textarea, button {
	outline:none;
	margin:0 auto;
	padding:5px 10px;
	-webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
    -moz-box-sizing: border-box;    /* Firefox, other Gecko */
    box-sizing: border-box;         /* Opera/IE 8+ */
}

img, a {
	border:0px;
	outline:none;
	color:#3a6cae;
	text-decoration:none;
}
img, a:hover {
	text-decoration:underline;
}
.zf-flLeft {
	float:left;
}
.zf-flRight {
	float:right;
}
.zf-clearBoth {
	clear:both;
}
ol, ul {
	list-style: none outside none;
}
.zf-normalText {
	font-size:13px;
	line-height:1.5;
}
.zf-smallText {
	font-size:0.9em;
	font-weight:normal;
}
.zf-smallHeading {
	font-size:18px;
}
.zf-heading {
	font-size:2em;
}
.zf-subHeading {
	font-size:1.5em;
}
.zf-boldText, .zf-boldText a {
	font-weight:bold;
	text-decoration:none;
}
.zf-italicText {
	font-style:italic;
}
.zf-heading a {
	text-decoration:underline;
}
.zf-heading a:hover {
	text-decoration:none;
}
.zf-blodText {
	font-weight:bold;
}
.zf-overAuto {
	overflow:auto;
}
.zf-split {
	color: #8B9193;
	padding: 0 3px;
}

.zf-backgroundBg {
	background:#f5f5f5;
}

.zf-templateWidth {
	margin:1% auto;	
}

.zf-templateWidth { 
	width:800px;
	}

.zf-templateWrapper {
	background:#fff;
	border:1px solid #d6d6d6;
	-webkit-box-shadow: 0 0px 3px #E1E1E1;
	-moz-box-shadow: 0 0px 3px #E1E1E1;
	box-shadow: 0 0px 3px #E1E1E1;
	-webkit-border-radius:2px;
	-moz-border-radius:2px;
	border-radius:2px;
}

.zf-tempContDiv input[type="text"], .zf-tempContDiv textarea, .zf-tempContDiv .zf-pdfTextArea {
	background:#fff;	
	border:1px solid #e5e5e5;	
	-webkit-border-radius:2px; 	
	-moz-border-radius:2px;	
	border-radius:2px;	
	padding:5px;
	font-size:13px;	
}

.zf-tempContDiv input[type="text"]:hover,  .zf-tempContDiv textarea:hover{	
	border:1px solid rgba(157, 157, 157, 0.75) !important;	
	}	
.zf-tempContDiv input[type="text"]:focus, .zf-tempContDiv textarea:focus{	
	border:1px solid rgba(121, 187, 238, 0.75) !important;	
	-webkit-box-shadow:0 0 5px rgba(82, 168, 236, 0.5) !important;	
	-moz-box-shadow:0 0 5px rgba(82, 168, 236, 0.5) !important;	
	box-shadow:0 0 5px rgba(82, 168, 236, 0.5) !important;	
	}
	
.zf-tempContDiv textarea {
	height:75px;
}
	
/**********Error Message***********/	
.zf-errorMessage {
	font:12px Arial, Helvetica, sans-serif;
	color:#ff0000;
	padding-top:5px;
}

/**********Mandatory Message***********/	
.zf-important {
	color:#ff0000 !important;
	font-weight: normal;
	margin-left:0px;
	padding: 0;
	font-size:13px !important;
}

/**********instruction Message***********/
.zf-instruction {
	color:#939393;
	font-style:italic;
	margin-top:3px;
	font-size:12px;
	overflow:visible !important;
}	

.zf-symbols {
	padding:0 5px;
}

.zf-overflow{ overflow:hidden;}

/*****************template Header Starts Here****************/

.zf-tempHeadBdr {
	margin:0;
	padding:0;
	overflow:hidden;
}

.zf-tempHeadContBdr {
	background: #3498db;
	border-bottom:1px solid #EAEAEA;
	margin: 0;
	padding:10px 25px;
	-webkit-border-radius:2px 2px 0 0;
	-moz-border-radius:2px 2px 0 0;
	border-radius:2px 2px 0 0;
}
.zf-tempHeadContBdr .zf-frmTitle {
	color: white ;
	margin: 0;
	padding: 0;
	font-size:2em;
}
.zf-tempHeadContBdr .zf-frmDesc {
	color:white  ;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
	padding: 0;
}

/****************template Header Ends Here****************/


.zf-subContWrap {
	padding:0;
	margin:10px;
	margin-bottom:0;
}

.zf-tempFrmWrapper {
	padding:10px 15px;
	margin:1px 0;
}

.zf-tempFrmWrapper .zf-tempContDiv {
	margin:0;
	padding:0;
}

.zf-tempFrmWrapper .zf-labelName {
	font-weight:bold;
	font-size:13px;
	color:#444;
}

.zf-form-sBox{ 
	padding:4px; 
	border:1px solid #e5e5e5; 
	font-size:13px;
	}

.zf-name .zf-tempContDiv span, .zf-phone .zf-tempContDiv span, .zf-time .zf-tempContDiv span{
	float: left;
	display:block;
}
.zf-name .zf-tempContDiv span{ 
	margin-right:4%;
	}
.zf-name .zf-tempContDiv span.zf-last{ 
	margin-right:0;
	}
.zf-name .zf-tempContDiv span label{ 
	display: block;
	padding-top:3px;
	}
.zf-name .zf-tempContDiv input[type="text"] {
	width:98%;
	}

.zf-phone .zf-tempContDiv span label, .zf-date .zf-tempContDiv span label, .zf-time .zf-tempContDiv span label, .zf-address .zf-tempContDiv span label, .zf-geolocation .zf-tempContDiv span label, .zf-name .zf-tempContDiv span label{ 
	font-size:11px; 
	padding-top:3px;
	}
.zf-phone .zf-tempContDiv label, .zf-date .zf-tempContDiv label, .zf-time .zf-tempContDiv label, .zf-address .zf-tempContDiv label, .zf-name .zf-tempContDiv span label {
	color:#888888;
	}
.zf-phone .zf-tempContDiv span label {
	display: block;
	padding-top:3px;
	text-align:center;
}
.zf-phone .zf-tempContDiv .zf-symbols {
	padding-top:5px;
}


.zf-currency .zf-tempContDiv span{ 
	display:inline-block;
	}
.zf-currency .zf-tempContDiv span label {
	display: block;
	padding-top:3px;
	}
.zf-currency .zf-tempContDiv .zf-symbol {
	font-size: 14px;
    margin-left:5px;
    margin-top: 4px;
	width:auto;
	font-weight:bold;
	}

.zf-decesion .zf-tempContDiv{ 
	width:100% !important; 
	margin-top:4px;
	}
.zf-decesion input[type="checkbox"] {
    display: block;
    height: 13px;
    margin: 0;
    padding: 0;
    width: 13px;
	float:left;
	margin-top:4px;
}
.zf-decesion label {
    display: block;
    line-height:21px;
    margin: 0px 0 0 25px !important;
    padding-bottom: 0 !important;
	width:95% !important;
	float:none !important;
	line-height:21px !important;
	text-align:left !important;
} 

.zf-tempContDiv input[type="file"]{
	outline:none;
	border:1px solid #ccc;
	margin:0 auto;
	padding:5px;
	width:auto;
}


.zf-address .zf-tempContDiv span, .zf-geolocation .zf-tempContDiv span {
	display:block;
	padding-bottom:15px;
	margin-right:2%;
	}
	
.zf-address .zf-tempContDiv span label, .zf-geolocation .zf-tempContDiv span label{
	display: block;
	padding-top:3px;
	}	
	
.zf-address .zf-tempContDiv .zf-addOne, .zf-geolocation .zf-tempContDiv .zf-addOne{
	float: none;
	padding-bottom:15px;
	margin-right:0;
	}

.zf-address .zf-tempContDiv .zf-addOne input, .zf-geolocation .zf-tempContDiv .zf-addOne input{
	width:98%;
	}
.zf-address .zf-tempContDiv span.zf-addtwo, .zf-geolocation .zf-tempContDiv span.zf-addtwo{
	width:48%;
	}
.zf-address .zf-tempContDiv span.zf-addtwo input, .zf-geolocation .zf-tempContDiv span.zf-addtwo input{
	width:99%;
	}	
.zf-address .zf-tempContDiv span.zf-addtwo .zf-form-sBox{
	width:100%;
	}
	
.zf-signContainer{ 
	margin:0; 
	padding:0; 
	width:100%;
	}
.zf-signContainer canvas{ 
	cursor:crosshair;
	border:1px solid #ccc; 
	background:#fff;
	}
.zf-signContainer a{
    font-size: 11px;
    text-decoration: underline;
	}	
	
.zf-section h2{
	border-bottom:1px solid #D7D7D7;
	font-size:22px; 
	color:#000; 
	font-weight:500; 
	font-family:'Open Sans',"Lucida Grande",Arial,Helvetica,sans-serif; 
	padding-bottom:10px;
	}
.zf-section p{ 
	color:#847F7F; 
	margin-top:10px;
	}
	
.zf-note .zf-labelName{	
	padding-top:7px;
	}
.zf-templateWrapper .zf-note{ 
	overflow:hidden;
	}

.zf-date .zf-tempContDiv span label {
	display: block;
	padding-top:3px;
	text-align:left;
}

.zf-subDate{ margin-right:10px;}
.zf-subDate label{ text-align:left !important;}

.zf-time .zf-tempContDiv span label {
	display: block;
	padding-top:3px;
	text-align:center;
}

.zf-time .zf-tempContDiv .zf-form-sBox{
	min-width:58px;
}

.zf-time .zf-tempContDiv .zf-symbols {
	padding-top:5px;
}

.zf-tempContDiv input[type="checkbox"], .zf-tempContDiv input[type="radio"] {
	display: block;
	height: 13px;
	margin: 4px 0 0;
	padding: 0;
	width: 13px;
}

.zf-radio .zf-overflow, .zf-checkbox .zf-overflow{padding-left:2px !important;}

.zf-sideBySide .zf-tempContDiv span {
	margin: 0 15px 5px 0;
	padding:0;
	width:auto;
	float: left;
	display:block;
}
.zf-sideBySide .zf-tempContDiv span input[type="checkbox"] {
	display: block;
	width: 13px;
	height: 13px;
	padding: 0;
	margin-top:3px;
	float:left;
}
.zf-sideBySide .zf-tempContDiv span input[type="radio"] {
	display: block;
	width: 13px;
	height: 13px;
	margin-top:4px;
	padding: 0;
	float:left;
}
.zf-sideBySide .zf-tempContDiv span label {
	line-height:21px;
	display: block;
	margin: 0 0 0 20px;
	padding: 0 0 5px;
}
.zf-oneColumns .zf-tempContDiv span {
	margin:0 0 13px 0;
	padding:0;
	width:100%;
	display:block;
	clear: both;
}
.zf-oneColumns .zf-tempContDiv span:last-child { margin-bottom:0;}

.zf-oneColumns .zf-tempContDiv span input[type="checkbox"] {
	display: block;
	width: 13px;
	height: 13px;
	margin:0;
	padding: 0;
	margin-top:3px;
	float:left;
}
.zf-oneColumns .zf-tempContDiv span input[type="radio"] {
	display: block;
	width: 13px;
	height: 13px;
	margin-top:4px;
	padding: 0;
	float:left;
}
.zf-oneColumns .zf-tempContDiv span label {
	line-height:19px;
	display: block;
	margin: 0 0 0 20px;
	padding:0;
	font-size:13px;
}
.zf-twoColumns .zf-tempContDiv span {
	margin: 0 5px 13px 0;
	width: 48%;
	float: left;
	display:block;
}
.zf-twoColumns .zf-tempContDiv span input[type="checkbox"] {
	display: block;
	width: 13px;
	height: 13px;
	margin: 0;
	padding: 0;
	margin-top:3px;
	float:left;
}
.zf-twoColumns .zf-tempContDiv span input[type="radio"] {
	display: block;
	width: 13px;
	height: 13px;
	margin-top:4px;
	padding: 0;
	float:left;
}
.zf-twoColumns .zf-tempContDiv span label {
	line-height:21px;
	display: block;
	margin: 0 0 0 20px;
	padding: 0 0 5px;
}
.zf-threeColumns .zf-tempContDiv span {
	margin: 0 5px 13px 0;
	width:30%;
	float: left;
}
.zf-threeColumns .zf-tempContDiv span input[type="checkbox"] {
	display:block;
	width: 13px;
	height: 13px;
	padding: 0;
	margin-top:3px;
	float:left;
}
.zf-threeColumns .zf-tempContDiv span input[type="radio"] {
	display:block;
	width: 13px;
	height: 13px;
	margin-top:4px;
	padding: 0;
	float:left;
}
.zf-threeColumns .zf-tempContDiv span label {
	line-height:21px;
	display: block;
	margin: 0 0 0 20px;
	padding: 0 0 5px;
}

.zf-mSelect select{ font-size:13px;}	

.zf-fmFooter {
	margin:0;
	padding:25px;
	text-align:center;
}

.zf-fmFooter .zf-submitColor{ font-size:14px; padding:4px 10px;}

.zf-submitColor{
	color: #fff;
	border:1px solid;
	border-color: #2F9EEC #1988D6 #1988D6;
	background: #2596e6;
	background: -webkit-gradient(linear, left top, left bottom, from(#2f9eec), to(#1988d6));
	background: -moz-linear-gradient(top,  #2f9eec,  #1988d6);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#2f9eec', endColorstr='#1988d6');
	-moz-box-shadow:0 1px 2px rgba(0, 0, 0, 0.15);
	-webkit-box-shadow:0 1px 2px rgba(0, 0, 0, 0.15);
	box-shadow:0 1px 2px rgba(0, 0, 0, 0.15);
	text-shadow:0 1px 0 rgba(0, 0, 0, 0.25);
	}
	
.zf-submitColor:hover{
	background: #1988d6;
	background: -webkit-gradient(linear, left top, left bottom, from(#1988d6), to(#1988d6));
	background: -moz-linear-gradient(top,  #1988d6,  #1988d6);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#1988d6', endColorstr='#1988d6');
	}	   	

/****************Field Small/Medium/Large Starts Here****************/

.zf-small .zf-tempContDiv input[type="text"], .zf-small .zf-tempContDiv textarea, .zf-small .zf-mSelect select, .zf-small .zf-tempContDiv .zf-sliderCont, .zf-small .zf-tempContDiv .zf-pdfTextArea{
	width:50%;
	}
.zf-medium .zf-tempContDiv input[type="text"], .zf-medium .zf-tempContDiv textarea, .zf-medium .zf-mSelect select, .zf-medium .zf-tempContDiv .zf-sliderCont, .zf-medium .zf-tempContDiv .zf-pdfTextArea{
	width:75%;
	}
.zf-large .zf-tempContDiv input[type="text"], .zf-large .zf-tempContDiv textarea, .zf-large .zf-mSelect select, .zf-large .zf-tempContDiv .zf-sliderCont, .zf-large .zf-tempContDiv .zf-pdfTextArea{
	width:100%;
	}
	
	
.zf-small .zf-tempContDiv .zf-form-sBox{
	width:50%;
	}
.zf-medium .zf-tempContDiv .zf-form-sBox{
	width:75%;
	}
.zf-large .zf-tempContDiv .zf-form-sBox{
	width:100%;
	}
.zf-namesmall	 .zf-tempContDiv span{
	width:23%;
	}
.zf-namemedium .zf-tempContDiv span{
	width:35%; 
	margin-right:5%;
	}
.zf-namelarge	 .zf-tempContDiv span{
	width:48%;
	}

.zf-csmall	 .zf-tempContDiv input[type="text"] {
	width:43%;
	}
.zf-cmedium .zf-tempContDiv input[type="text"] {
	width:67%;
	}
.zf-clarge	 .zf-tempContDiv input[type="text"] {
	width:91%;
	} 	

.zf-nsmall .zf-tempContDiv input[type="text"] {	
	width:50%;	
	}
.zf-nmedium .zf-tempContDiv input[type="text"] {
	width:75%;
	}
.zf-nlarge .zf-tempContDiv input[type="text"] {
	width:100%;
	}

.zf-signSmall .zf-tempContDiv .zf-signContainer .zf-signArea {	
	width:49%;
	}
.zf-signMedium .zf-tempContDiv .zf-signContainer .zf-signArea {
	width:60%;
	}
.zf-signLarge .zf-tempContDiv .zf-signContainer .zf-signArea {	
	width:74%;
	}	

.zf-addrsmall .zf-tempContDiv .zf-addrCont{ 
	width:50%;
	}
.zf-addrmedium .zf-tempContDiv .zf-addrCont{ 
	width:75%;
	}
.zf-addrlarge .zf-tempContDiv .zf-addrCont{ 
	width:100%;
	}	
	
	
/****************Field Small/Medium/Large Ends Here****************/	

.zf-topAlign .zf-tempFrmWrapper .zf-labelName {
	padding-bottom:8px;
	display:block;
}

.zf-topAlign .zf-threeColumns .zf-labelName, .zf-topAlign .zf-twoColumns .zf-labelName, .zf-topAlign .zf-oneColumns .zf-labelName, .zf-topAlign .zf-sideBySide .zf-labelName{ padding-bottom:8px;}

.zf-leftAlign {
	display:block;
}
.zf-leftAlign .zf-tempFrmWrapper .zf-labelName {
	float:left;
	width:30%;
	line-height:20px;
	margin-right:15px;
}
.zf-leftAlign .zf-tempFrmWrapper .zf-tempContDiv {
	 margin-left: 35%;
}

.zf-leftAlign .zf-slider .zf-tempContDiv{ margin-top:6px;}

.zf-leftAlign .zf-decesion .zf-tempContDiv, .zf-rightAlign .zf-decesion .zf-tempContDiv{ margin-left:0 !important;}

.zf-rightAlign {
	display:block;
}
.zf-rightAlign .zf-tempFrmWrapper .zf-labelName {
	float:left;
	width:30%;
	line-height: 20px;
	text-align:right;
	margin-right:15px;
}
.zf-rightAlign .zf-tempFrmWrapper .zf-tempContDiv {
	 margin-left: 35%;
}
.zf-matrixTable{ font-size:13px; overflow-x: scroll;padding-bottom: 15px !important;}
.zf-matrixTable table th, .zf-matrixTable table td{padding:10px;}
.zf-matrixTable thead th, .zf-matrixTable table td{ text-align:center;}
.zf-matrixTable table td input[type="radio"], .zf-matrixTable table td input[type="checkbox"]{ display:inline-block;}
.zf-matrixTable tbody th{ font-weight:normal;font-size: 13px;text-align: left;}
.zf-matrixTable thead th { font-weight:600;font-size: 13px;}

/****************Form Top Align Starts Here****************/	
	















</style>
<script>

function submitForm(){
	
	var formObj = document.forms['form'];
	formObj.submit();
	
}


</script>























<script src="js/validation.js"></script></head><body class="zf-backgroundBg"><!-- Change or deletion of the name attributes in the input tag will lead to empty values on record submission-->
<div class="zf-templateWidth"><form action='UserRegisterPost.jsp' name='form' method='POST' onSubmit='javascript:document.charset="UTF-8"; return zf_ValidateAndSubmit();' accept-charset='UTF-8' enctype='multipart/form-data' id='form'><input type="hidden" name="zf_referrer_name" value=""><!-- To Track referrals , place the referrer name within the " " in the above hidden input field -->
<input type="hidden" name="zf_redirect_url" value=""><!-- To redirect to a specific page after record submission , place the respective url within the " " in the above hidden input field -->
<div class="zf-templateWrapper"><!---------template Header Starts Here---------->
<ul class="zf-tempHeadBdr"><li class="zf-tempHeadContBdr"><h2 class="zf-frmTitle"><em>User Registration</em></h2>
<p class="zf-frmDesc">This is to register user into the system.</p>
<div class="zf-clearBoth"></div></li></ul><!---------template Header Ends Here---------->
<!---------template Container Starts Here---------->
<div class="zf-subContWrap zf-topAlign"><ul>
<!---------Email Starts Here---------->  
<li class="zf-tempFrmWrapper zf-small"><label class="zf-labelName">Email 
<em class="zf-important">*</em>
</label>
<div class="zf-tempContDiv"><span> <input fieldType=9 invlovedinsalesiq=false type="text" maxlength="255" name="eid" checktype="c5" value=""/></span> <p id="Email_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Email Ends Here----------> 

<!--Password starts here ----->

<li class="zf-tempFrmWrapper zf-small"><label class="zf-labelName">Password 
<em class="zf-important">*</em>
</label>
<div class="zf-tempContDiv"><span> <input fieldType=9 invlovedinsalesiq=false type="password" maxlength="255" name="pswd" checktype="c5" value=""/></span> <p id="Email_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li>




 
<!---------Name Starts Here----------> 
<li class="zf-tempFrmWrapper zf-name zf-namemedium"><label class="zf-labelName">Name
</label>
<div class="zf-tempContDiv"><div>				
<span> <input type="text" maxlength="255" name="sn" invlovedinsalesiq=false fieldType=7 checktype="c1"/><label>First</label> </span>
<div class="zf-clearBoth"></div></div><p id="Name_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Name Ends Here----------> 
<!---------Radio Starts Here---------->    
<li class="zf-radio zf-tempFrmWrapper zf-threeColumns"><label class="zf-labelName">Gender
</label>
<div class="zf-tempContDiv"><div class="zf-overflow">
<span class="zf-multiAttType"> 
<input class="zf-radioBtnType" type="radio" id="Radio_1" name="sg" checktype="c1" value="Male">
<label for="Radio_1" class="zf-radioChoice">Male</label> </span>
<span class="zf-multiAttType"> 
<input class="zf-radioBtnType" type="radio" id="Radio_2" name="sg" checktype="c1" value="Female">
<label for="Radio_2" class="zf-radioChoice">Female</label> </span>
<div class="zf-clearBoth"></div></div><p id="Radio_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Radio Ends Here---------->    
<!---------Phone Starts Here----------> 
<li  class="zf-tempFrmWrapper zf-phone small"><label class="zf-labelName">Phone
</label>
<div class="zf-tempContDiv"><div>
<input invlovedinsalesiq=false type="text" name="sph" compname="PhoneNumber" checktype="c7" phoneFormat="1" maxlength="20" value="" id="international_PhoneNumber_countrycode" fieldType="11"/>
<div class="zf-clearBoth"></div></div><p id="PhoneNumber_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Phone Ends Here----------> 
<!--address-->
<!---------Address Starts Here---------->    
<li class="zf-tempFrmWrapper zf-address zf-addrlarge" ><label class="zf-labelName">Address
</label>
<div class="zf-tempContDiv zf-address"><div class="zf-addrCont">
<span class="zf-flLeft zf-addtwo"> <input type="text" maxlength="255" name="sci" checktype="c1"/><label>City</label> </span>
<span class="zf-flLeft zf-addtwo"> <input type="text" maxlength="255" name="ss" checktype="c1"/><label>State/Region/Province</label> </span>
<span class="zf-flLeft zf-addtwo"> <select class="zf-form-sBox" name="sc" checktype="c1"><option>-Select-</option>
<option>Afghanistan</option>
<option>Akrotiri</option>
<option>Albania</option>
<option>Algeria</option>
<option>American Samoa</option>
<option>Andorra</option>
<option>Angola</option>
<option>Anguilla</option>
<option>Antarctica</option>
<option>Antigua and Barbuda</option>
<option>Argentina</option>
<option>Armenia</option>
<option>Aruba</option>
<option>Ashmore and Cartier Islands</option>
<option>Australia</option>
<option>Austria</option>
<option>Azerbaijan</option>
<option>Bahrain</option>
<option>Bangladesh</option>
<option>Barbados</option>
<option>Bassas Da India</option>
<option>Belarus</option>
<option>Belgium</option>
<option>Belize</option>
<option>Benin</option>
<option>Bermuda</option>
<option>Bhutan</option>
<option>Bolivia</option>
<option>Bosnia and Herzegovina</option>
<option>Botswana</option>
<option>Bouvet Island</option>
<option>Brazil</option>
<option>British Indian Ocean Territory</option>
<option>British Virgin Islands</option>
<option>Brunei</option>
<option>Bulgaria</option>
<option>Burkina Faso</option>
<option>Burma</option>
<option>Burundi</option>
<option>Cambodia</option>
<option>Cameroon</option>
<option>Canada</option>
<option>Cape Verde</option>
<option>Cayman Islands</option>
<option>Central African Republic</option>
<option>Chad</option>
<option>Chile</option>
<option>China</option>
<option>Christmas Island</option>
<option>Clipperton Island</option>
<option>Cocos (Keeling) Islands</option>
<option>Colombia</option>
<option>Comoros</option>
<option>Cook Islands</option>
<option>Coral Sea Islands</option>
<option>Costa Rica</option>
<option>Cote D'Ivoire</option>
<option>Croatia</option>
<option>Cuba</option>
<option>Cyprus</option>
<option>Czech Republic</option>
<option>Democratic Republic of the Congo</option>
<option>Denmark</option>
<option>Dhekelia</option>
<option>Djibouti</option>
<option>Dominica</option>
<option>Dominican Republic</option>
<option>Ecuador</option>
<option>Egypt</option>
<option>El Salvador</option>
<option>Equatorial Guinea</option>
<option>Eritrea</option>
<option>Estonia</option>
<option>Ethiopia</option>
<option>Europa Island</option>
<option>Falkland Islands (Islas Malvinas)</option>
<option>Faroe Islands</option>
<option>Federated States of Micronesia</option>
<option>Fiji</option>
<option>Finland</option>
<option>France</option>
<option>French Guiana</option>
<option>French Polynesia</option>
<option>French Southern and Antarctic Lands</option>
<option>Gabon</option>
<option>Gaza Strip</option>
<option>Georgia</option>
<option>Germany</option>
<option>Ghana</option>
<option>Gibraltar</option>
<option>Glorioso Islands</option>
<option>Greece</option>
<option>Greenland</option>
<option>Grenada</option>
<option>Guadeloupe</option>
<option>Guam</option>
<option>Guatemala</option>
<option>Guernsey</option>
<option>Guinea</option>
<option>Guinea-bissau</option>
<option>Guyana</option>
<option>Haiti</option>
<option>Heard Island and Mcdonald Islands</option>
<option>Holy See (Vatican City)</option>
<option>Honduras</option>
<option>Hong Kong</option>
<option>Hungary</option>
<option>Iceland</option>
<option>India</option>
<option>Indonesia</option>
<option>Iran</option>
<option>Iraq</option>
<option>Ireland</option>
<option>Isle of Man</option>
<option>Israel</option>
<option>Italy</option>
<option>Jamaica</option>
<option>Jan Mayen</option>
<option>Japan</option>
<option>Jersey</option>
<option>Jordan</option>
<option>Juan De Nova Island</option>
<option>Kazakhstan</option>
<option>Kenya</option>
<option>Kiribati</option>
<option>Kuwait</option>
<option>Kyrgyzstan</option>
<option>Laos</option>
<option>Latvia</option>
<option>Lebanon</option>
<option>Lesotho</option>
<option>Liberia</option>
<option>Libya</option>
<option>Liechtenstein</option>
<option>Lithuania</option>
<option>Luxembourg</option>
<option>Macau</option>
<option>Macedonia</option>
<option>Madagascar</option>
<option>Malawi</option>
<option>Malaysia</option>
<option>Maldives</option>
<option>Mali</option>
<option>Malta</option>
<option>Marshall Islands</option>
<option>Martinique</option>
<option>Mauritania</option>
<option>Mauritius</option>
<option>Mayotte</option>
<option>Mexico</option>
<option>Moldova</option>
<option>Monaco</option>
<option>Mongolia</option>
<option>Montserrat</option>
<option>Morocco</option>
<option>Mozambique</option>
<option>Namibia</option>
<option>Nauru</option>
<option>Navassa Island</option>
<option>Nepal</option>
<option>Netherlands</option>
<option>Netherlands Antilles</option>
<option>New Caledonia</option>
<option>New Zealand</option>
<option>Nicaragua</option>
<option>Niger</option>
<option>Nigeria</option>
<option>Niue</option>
<option>Norfolk Island</option>
<option>North Korea</option>
<option>Northern Mariana Islands</option>
<option>Norway</option>
<option>Oman</option>
<option>Pakistan</option>
<option>Palau</option>
<option>Panama</option>
<option>Papua New Guinea</option>
<option>Paracel Islands</option>
<option>Paraguay</option>
<option>Peru</option>
<option>Philippines</option>
<option>Pitcairn Islands</option>
<option>Poland</option>
<option>Portugal</option>
<option>Puerto Rico</option>
<option>Qatar</option>
<option>Republic of the Congo</option>
<option>Reunion</option>
<option>Romania</option>
<option>Russia</option>
<option>Rwanda</option>
<option>Saint Helena</option>
<option>Saint Kitts and Nevis</option>
<option>Saint Lucia</option>
<option>Saint Pierre and Miquelon</option>
<option>Saint Vincent and the Grenadines</option>
<option>Samoa</option>
<option>San Marino</option>
<option>Sao Tome and Principe</option>
<option>Saudi Arabia</option>
<option>Senegal</option>
<option>Serbia</option>
<option>Seychelles</option>
<option>Sierra Leone</option>
<option>Singapore</option>
<option>Slovakia</option>
<option>Slovenia</option>
<option>Solomon Islands</option>
<option>Somalia</option>
<option>South Africa</option>
<option>South Georgia and the South Sandwich Islands</option>
<option>South Korea</option>
<option>Spain</option>
<option>Spratly Islands</option>
<option>Sri Lanka</option>
<option>Sudan</option>
<option>Suriname</option>
<option>Svalbard</option>
<option>Swaziland</option>
<option>Sweden</option>
<option>Switzerland</option>
<option>Syria</option>
<option>Taiwan</option>
<option>Tajikistan</option>
<option>Tanzania</option>
<option>Thailand</option>
<option>The Bahamas</option>
<option>The Gambia</option>
<option>Timor-leste</option>
<option>Togo</option>
<option>Tokelau</option>
<option>Tonga</option>
<option>Trinidad and Tobago</option>
<option>Tromelin Island</option>
<option>Tunisia</option>
<option>Turkey</option>
<option>Turkmenistan</option>
<option>Turks and Caicos Islands</option>
<option>Tuvalu</option>
<option>Uganda</option>
<option>Ukraine</option>
<option>United Arab Emirates</option>
<option>United Kingdom</option>
<option>United States</option>
<option>Uruguay</option>
<option>Uzbekistan</option>
<option>Vanuatu</option>
<option>Venezuela</option>
<option>Vietnam</option>
<option>Virgin Islands</option>
<option>Wake Island</option>
<option>Wallis and Futuna</option>
<option>West Bank</option>
<option>Western Sahara</option>
<option>Yemen</option>
<option>Zambia</option>
<option>Zimbabwe</option>
</select><label>Country</label> </span>
<div class="zf-clearBoth"></div><p id="Address_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div></div><div class="zf-eclearBoth"></div></li><!---------Address Ends Here---------->
</ul></div><!---------template Container Starts Here---------->
<ul><li class="zf-fmFooter"><button class="zf-submitColor" onclick="submitForm();" >Submit</button></li></ul></div><!-- 'zf-templateWrapper' ends --></form></div><!-- 'zf-templateWidth' ends -->
<script type="text/javascript">var zf_DateRegex = new RegExp("^(([0][1-9])|([1-2][0-9])|([3][0-1]))[-](Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)[-](?:(?:19|20)[0-9]{2})$");
var zf_MandArray = [ "Email"]; 
var zf_FieldArray = [ "Email", "Name_First", "Name_Last", "Radio", "PhoneNumber_countrycode", "Address_City", "Address_Region", "Address_Country"]; 
var isSalesIQIntegrationEnabled = false;</script></body></html>