<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="javax.xml.ws.Response"%>
<%@page import="javax.xml.ws.ResponseWrapper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Login.Modify"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<jsp:include page="../header/AdminMenu.jsp"/>
<html><head>
<style>

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
	background: #494949;
	border-bottom:1px solid #EAEAEA;
	margin: 0;
	padding:10px 25px;
	-webkit-border-radius:2px 2px 0 0;
	-moz-border-radius:2px 2px 0 0;
	border-radius:2px 2px 0 0;
}
.zf-tempHeadContBdr .zf-frmTitle {
	color: #FFFFFF;
	margin: 0;
	padding: 0;
	font-size:2em;
}
.zf-tempHeadContBdr .zf-frmDesc {
	color: #DDDDDD;
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

	// $Id: $
function zf_ValidateAndSubmit(){
		if(zf_CheckMandatory()){
			if(zf_ValidCheck()){
				if(isSalesIQIntegrationEnabled){
					zf_addDataToSalesIQ();
				}
				return true;
			}else{		
				return false;
			}
		}else{
			return false;
		}
	}
		function zf_CheckMandatory(){
		for(i = 0 ; i < zf_MandArray.length ; i ++) {
		  	var fieldObj=document.forms.form[zf_MandArray[i]];
		  	if(fieldObj) {  
				  	if(fieldObj.nodeName != null ){
				  		if ( fieldObj.nodeName=='OBJECT' ) {
								if(!zf_MandatoryCheckSignature(fieldObj)){
									zf_ShowErrorMsg(zf_MandArray[i]);
								 	return false;
								}
							}else if (((fieldObj.value).replace(/^\s+|\s+$/g, '')).length==0) {
							 if(fieldObj.type =='file')
								{ 
								 fieldObj.focus(); 
								 zf_ShowErrorMsg(zf_MandArray[i]);
								 return false;
								} 
				   	   	  	  fieldObj.focus();
				   	   	  	  zf_ShowErrorMsg(zf_MandArray[i]);
				   	   	  	  return false;
							}  else if( fieldObj.nodeName=='SELECT' ) {// No I18N
				  	   	   	 if(fieldObj.options[fieldObj.selectedIndex].value=='-Select-') {
								fieldObj.focus();
								zf_ShowErrorMsg(zf_MandArray[i]);
								return false;
							   }
							} else if( fieldObj.type =='checkbox' || fieldObj.type =='radio' ){
								if(fieldObj.checked == false){
									fieldObj.focus();
									zf_ShowErrorMsg(zf_MandArray[i]);
									return false;
			   					} 
							} 
				  	}else{
				  		var checkedValsCount = 0;
						var inpChoiceElems = fieldObj;
							for(var ii = 0; ii < inpChoiceElems.length ; ii ++ ){
						      	if(inpChoiceElems[ii].checked === true ){
						      		checkedValsCount ++;
						      	}
							}
							if ( checkedValsCount == 0) {
									inpChoiceElems[0].focus();
									zf_ShowErrorMsg(zf_MandArray[i]);
									return false;
							 	}
					}
			}
		}
		return true;
	}
	function zf_ValidCheck(){
		var isValid = true;
		for(ind = 0 ; ind < zf_FieldArray.length ; ind++ ) {
			var fieldObj=document.forms.form[zf_FieldArray[ind]];
		  	if(fieldObj) {
		  		if(fieldObj.nodeName != null ){
			  		var checkType = fieldObj.getAttribute("checktype"); 
			  		if( checkType == "c2" ){// No I18N
			  			if( !zf_ValidateNumber(fieldObj)){
							isValid = false;
							fieldObj.focus();
							zf_ShowErrorMsg(zf_FieldArray[ind]);
							return false;
						}
			  		}else if( checkType == "c3" ){// No I18N
			  			if (!zf_ValidateCurrency(fieldObj) || !zf_ValidateDecimalLength(fieldObj,10) ) {
							isValid = false;
							fieldObj.focus();
							zf_ShowErrorMsg(zf_FieldArray[ind]);
							return false;
						}
			  		}else if( checkType == "c4" ){// No I18N
			  			if( !zf_ValidateDateFormat(fieldObj)){
							isValid = false;
							fieldObj.focus();
							zf_ShowErrorMsg(zf_FieldArray[ind]);
							return false;
						}
			  		}else if( checkType == "c5" ){// No I18N
			  			if (!zf_ValidateEmailID(fieldObj)) {
							isValid = false;
							fieldObj.focus();
							zf_ShowErrorMsg(zf_FieldArray[ind]);
							return false;
						}
			  		}else if( checkType == "c6" ){// No I18N
			  			if (!zf_ValidateLiveUrl(fieldObj)) {
							isValid = false;
							fieldObj.focus();
							zf_ShowErrorMsg(zf_FieldArray[ind]);
							return false;
							}
			  		}else if( checkType == "c7" ){// No I18N
			  			if (!zf_ValidatePhone(fieldObj)) {
							isValid = false;
							fieldObj.focus();
							zf_ShowErrorMsg(zf_FieldArray[ind]);
							return false;
							}
			  		}else if( checkType == "c8" ){// No I18N
			  			zf_ValidateSignature(fieldObj);
			  		}
			  	}
		  	}
		}
         	return isValid;
	}
	function zf_ShowErrorMsg(uniqName){
		var fldLinkName;
		for( errInd = 0 ; errInd < zf_FieldArray.length ; errInd ++ ) {
			fldLinkName = zf_FieldArray[errInd].split('_')[0];
			document.getElementById(fldLinkName+"_error").style.display = 'none';
		}
		var linkName = uniqName.split('_')[0];
		document.getElementById(linkName+"_error").style.display = 'block';
	}
	function zf_ValidateNumber(elem) {
	 	var validChars = "-0123456789";
	 	var numValue = elem.value.replace(/^\s+|\s+$/g, '');
	 	if (numValue != null && !numValue == "") {
	 		var strChar;
	 		var result = true;
	 		if (numValue.charAt(0) == "-" && numValue.length == 1) {
	 			return false;
	 		}
	 		for (i = 0; i < numValue.length && result == true; i++) {
	 			strChar = numValue.charAt(i);
	 			if ((strChar == "-") && (i != 0)) {
	 				return false;
	 			}
	 			if (validChars.indexOf(strChar) == -1) {
	 				result = false;
	 			}
	 		}
	 		return result;
	 	} else {
	 		return true;
	 	}
	 }
	 function zf_ValidateDateFormat(inpElem){
	 	var dateValue = inpElem.value.replace(/^\s+|\s+$/g, '');
	 	if( dateValue == "" ){
	 		return true;
	 	}else{
			return( zf_DateRegex.test(dateValue) );
		}
	 }
	 function zf_ValidateCurrency(elem) {
	 	var validChars = "0123456789."; 
	 	var numValue = elem.value.replace(/^\s+|\s+$/g, '');
	 	if (numValue != null && !numValue == "") {
	 		var strChar;
	 		var result = true;
	 		for (i = 0; i < numValue.length && result == true; i++) {
	 			strChar = numValue.charAt(i);
	 			if (validChars.indexOf(strChar) == -1) {
	 				result = false;
	 			}
	 		}
	 		return result;
	 	} else {
	 		return true;
	 	}
	 }
	 function zf_ValidateDecimalLength(elem,decimalLen) {
	 	var numValue = elem.value;
	 	if (numValue.indexOf('.') >= 0) {
	 		var decimalLength = numValue.substring(numValue.indexOf('.') + 1).length;
	 		if (decimalLength > decimalLen) {
	 			return false;
	 		} else {
	 			return true;
	 		}
	 	}
	 	return true;
	 }
	 function zf_ValidateEmailID(elem) {
        var check = 0;
        var emailValue = elem.value;
        if (emailValue != null && !emailValue == "") {
            var emailArray = emailValue.split(",");
            for (i = 0; i < emailArray.length; i++) {
                var emailExp = /^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$/;
                if (!emailExp.test(emailArray[i].replace(/^\s+|\s+$/g, ''))) {
                    check = 1;
                }
            }
            if (check == 0) {
                return true;
            } else {
                return false;
            }
        } else {
            return true;
        }
    }
    function zf_ValidateLiveUrl(elem) {
    	var urlValue = elem.value;
		if(urlValue !== null && typeof(urlValue) !== "undefined") {
			urlValue = urlValue.replace(/^\s+|\s+$/g, '');
			if(urlValue !== "") {
				var urlregex =  new RegExp("^(((((h|H)(t|T){2}(p|P)(s|S)?)|((f|F)(t|T)(p|P)))://((w|W){3}.)?)|((w|W){3}.))[a-zA-Z0-9-\\P{InBasicLatin}\\s]+(\\.[a-zA-Z0-9-:;\\?#_]+)+(/[\\x21-\\x7e\\P{InBasicLatin}\\s]*)*$");
				return(urlregex.test(urlValue));
			}
        }
        return true;
    }
    function zf_ValidatePhone(inpElem){
    	var phoneFormat = parseInt(inpElem.getAttribute("phoneFormat")); 
    	var fieldInpVal = inpElem.value.replace(/^\s+|\s+$/g, '');
    	var toReturn = true ;
    	if( phoneFormat === 1 ){
			var IRexp = /^[+]*[()0-9- ]+$/;
 			if (fieldInpVal != "" && !IRexp.test(fieldInpVal)) {
 				toReturn = false;
 				return toReturn;
 			}
 			return toReturn;
    	}else if( phoneFormat === 2 ){
    		var InpMaxlength = inpElem.getAttribute("maxlength");
    		var USARexp = /^[0-9]+$/;
    		if  ( fieldInpVal != "" && USARexp.test(fieldInpVal) &&  fieldInpVal.length == InpMaxlength ) {
				toReturn = true;
			}else if( fieldInpVal == "" ){
				toReturn = true;
			}else{
				toReturn = false;
			}
			return toReturn;
    	}
    }
  
  function zf_ValidateSignature(objElem) {
  		var linkName = objElem.getAttribute("compname");
  		var canvasElem = document.getElementById("drawingCanvas-"+linkName);
  		var isValidSign = zf_IsSignaturePresent(objElem,linkName,canvasElem);
   		var hiddenSignInputElem = document.getElementById("hiddenSignInput-"+linkName);
		if(isValidSign){
			hiddenSignInputElem.value = canvasElem.toDataURL();
		}else{
			hiddenSignInputElem.value = "";// No I18N
		}
		return isValidSign;
  	}

  	function zf_MandatoryCheckSignature(objElem){
  		var linkName = objElem.getAttribute("compname");
  		var canvasElem = document.getElementById("drawingCanvas-"+linkName);
  		var isValid = zf_IsSignaturePresent(objElem,linkName,canvasElem);
		return isValid;
  	}

  	function zf_IsSignaturePresent(objElem,linkName,canvasElem){
   		var context = canvasElem.getContext('2d'); // No I18N
   		var canvasWidth = canvasElem.width;
   		var canvasHeight = canvasElem.height;
   		var canvasData = context.getImageData(0, 0, canvasWidth, canvasHeight);
   		var signLen = canvasData.data.length;
   		var flag = false;
   		for(var index =0; index< signLen; index++) {
   	     	if(!canvasData.data[index]) {
   	       		flag =  false;
   	     	}else if(canvasData.data[index]) {
   		   		flag = true;
   		   		break;
   	     	}
   		}
		return flag;
  	}

	function zf_FocusNext(elem,event) {  
	 	if(event.keyCode == 9 || event.keyCode == 16){
	      return;
	    }
	    if(event.keyCode >=37 && event.keyCode <=40){
	       return;
	    } 	
	    var compname = elem.getAttribute("compname");
	    var inpElemName = elem.getAttribute("name");
	 	if (inpElemName == compname+"_countrycode") { 
	 		if (elem.value.length == 3) {
	 			document.getElementsByName(compname+"_first")[0].focus();
	 		}
	 	} else if (inpElemName == compname+"_first" ) { 
	 		if (elem.value.length == 3) {
	 			document.getElementsByName(compname+"_second")[0].focus();
	 		}
	 	}
	}
	function zf_addDataToSalesIQ(){
		var visitorinfo = {};
		var elements = document.getElementById("form").elements;
		for (var i = 0; i<elements.length;i++) {
			var inpElem = elements[i];
			var name = inpElem.getAttribute("name");
			var fieldType = inpElem.getAttribute("fieldType");
			if(fieldType==="1" || fieldType==="7" || fieldType==="9" || fieldType==="11"){
				var invlovedinsalesiq = inpElem.getAttribute("invlovedinsalesiq");
				if(fieldType==="1"){
					var nameFieldInvolved = inpElem.getAttribute("nameFieldInvolved");
					var phoneFieldInvolved = inpElem.getAttribute("phoneFieldInvolved");
					if(invlovedinsalesiq==="true"){
						if(phoneFieldInvolved){
							var salesIQValue=inpElem.value;
							visitorinfo.contactnumber = salesIQValue;
						}if(nameFieldInvolved){
							var salesIQValue=inpElem.value;
							alert(salesIQValue);
							visitorinfo.name = salesIQValue;
						}
					}
				}if(fieldType==="7"){
					if(invlovedinsalesiq==="true"){
						var salesIQValue=inpElem.value;
						visitorinfo.name = salesIQValue;
					}
					
				}if(fieldType==="9"){
					if(invlovedinsalesiq==="true"){
						var salesIQValue=inpElem.value;
						visitorinfo.email = salesIQValue;
					}
					
				}if(fieldType==="11"){
					if(invlovedinsalesiq==="true"){
						var compName = inpElem.getAttribute("compname");
						var phoneFormat = inpElem.getAttribute("phoneFormat");
						var salesIQValue="";
						if(phoneFormat==="1"){
							salesIQValue = document.getElementById("international_"+compName+"_countrycode").value; 
						}else{
							var countryCode = document.getElementById(compName+"_countrycode").value;
							var first = document.getElementById(compName+"_first").value;
							var last = document.getElementById(compName+"_second").value;
							salesIQValue =countryCode+first+last;
						}
						visitorinfo.contactnumber = salesIQValue;
					}
					
				}
			}
		}
		parent.postMessage(JSON.stringify({ type: 'zoho.salesiq.apimessage', visitor: visitorinfo } ), '*');// No I18N
	}

function popup()
{
	
	
	
	document.forms[0].submit();
	prompt("Successfully Entered");
}






</script>























</head><body class="zf-backgroundBg"><!-- Change or deletion of the name attributes in the input tag will lead to empty values on record submission-->
<div class="zf-templateWidth"><form action='InsertQuestion.jsp' name='form' method='post'>




	<input type="hidden" name="zf_referrer_name" value=""><!-- To Track referrals , place the referrer name within the " " in the above hidden input field -->
<input type="hidden" name="zf_redirect_url" value=""><!-- To redirect to a specific page after record submission , place the respective url within the " " in the above hidden input field -->
<div class="zf-templateWrapper"><!---------template Header Starts Here---------->
<ul class="zf-tempHeadBdr"><li class="zf-tempHeadContBdr"><h2 class="zf-frmTitle"><em>Add Question</em></h2>
<p class="zf-frmDesc"></p>
<div class="zf-clearBoth"></div></li></ul><!---------template Header Ends Here---------->
<!---------template Container Starts Here---------->
<div class="zf-subContWrap zf-topAlign"><ul>
<!---------Multiple Line Starts Here---------->
<li class="zf-tempFrmWrapper zf-medium"><label class="zf-labelName">Question: 
<em class="zf-important">*</em>
</label>
<div class="zf-tempContDiv"><span> <textarea name="ques" checktype="c1" maxlength="65535"></textarea> </span><p id="MultiLine_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Multiple Line Ends Here---------->
<!---------Single Line Starts Here---------->
<li class="zf-tempFrmWrapper zf-small"><label class="zf-labelName">First Option: 
</label>
<div class="zf-tempContDiv"><span> 
<input type="text" name="optiona" checktype="c1" value="" maxlength="255" invlovedinsalesiq=false /> </span><p id="SingleLine_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Single Line Ends Here---------->
<!---------Single Line Starts Here---------->
<li class="zf-tempFrmWrapper zf-small"><label class="zf-labelName">Second Option: 
</label>
<div class="zf-tempContDiv"><span> 
<input type="text" name="optionb" checktype="c1" value="" maxlength="255" invlovedinsalesiq=false /> </span><p id="SingleLine1_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Single Line Ends Here---------->
<!---------Single Line Starts Here---------->
<li class="zf-tempFrmWrapper zf-small"><label class="zf-labelName">Third Option: 
</label>
<div class="zf-tempContDiv"><span> 
<input type="text" name="optionc" checktype="c1" value="" maxlength="255" invlovedinsalesiq=false /> </span><p id="SingleLine2_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Single Line Ends Here---------->
<!---------Single Line Starts Here---------->
<li class="zf-tempFrmWrapper zf-small"><label class="zf-labelName">Fourth Option: 
</label>
<div class="zf-tempContDiv"><span> 
<input type="text" name="optiond" checktype="c1" value="" maxlength="255" invlovedinsalesiq=false /> </span><p id="SingleLine3_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Single Line Ends Here---------->
<!---------Dropdown Starts Here---------->
<li class="zf-tempFrmWrapper zf-small"><label class="zf-labelName">Correct Option:
</label>
<div class="zf-tempContDiv"><select class="zf-form-sBox" name="correct" checktype="c1"><option selected="true" value="-Select-">-Select-</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
</select><p id="Dropdown_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li><!---------Dropdown Ends Here---------->
<!---------Dropdown Starts Here---------->
<li class="zf-tempFrmWrapper zf-small"><label class="zf-labelName">Course:
</label>


   	<div class="zf-tempContDiv"><select class="zf-form-sBox" name="id" checktype="c1"><option selected="true" value="-Select-">-Select-</option>
   	 	  <%
   	 	String s="select distinct coursename,courseid from course where active='Y'";
   	 Modify connection = new Modify();
   	 ResultSet rs=connection.getResults(s);
   	 	  
   	 	  while(rs.next()){
%>


<option value='<%=rs.getString(2) %>'><%=rs.getString(1) %></option>
<%} %>
</select><p id="Dropdown1_error" class="zf-errorMessage" style="display:none;">Invalid value</p>
</div><div class="zf-clearBoth"></div></li>






<!---------Dropdown Ends Here---------->
</ul></div><!---------template Container Starts Here---------->
<ul><li class="zf-fmFooter"> <input type='submit'  class="zf-submitColor" value="submit"></li></ul></div><!-- 'zf-templateWrapper' ends --></form></div><!-- 'zf-templateWidth' ends -->
<script type="text/javascript">var zf_DateRegex = new RegExp("^(([0][1-9])|([1-2][0-9])|([3][0-1]))[-](Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)[-](?:(?:19|20)[0-9]{2})$");
var zf_MandArray = [ "MultiLine"]; 
var zf_FieldArray = [ "MultiLine", "SingleLine", "SingleLine1", "SingleLine2", "SingleLine3", "Dropdown", "Dropdown1"]; 
var isSalesIQIntegrationEnabled = false;</script></body></html>


