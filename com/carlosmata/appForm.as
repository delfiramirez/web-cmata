﻿import mx.events.EventDispatcher;if (this._currentframe = "appForm"){this._lockroot = true;this.stop();var appForm:Object;var bgForm_mc:MovieClip;var trueBTN_mc:MovieClip;var nom_txt:String;var email_txt:String;var message_txt:String;var emailSender_txt:String;var mailFrom_txt:String;var body_txt:String;var trueButtonLabel_txt:String;this.bgForm_mc._alpha = 86;	initAppForm = function():Void {	mx.events.EventDispatcher.initialize(this);		detectUserLang();	this.appForm.emailSender_txt.onSetFocus = this.appForm.mailFrom_txt.onSetFocus = this.appForm.body_txt.onSetFocus = function(evt:Object) 		{		this.text = " ";	};	this.appForm.emailSender_txt.onKillFocus = this.appForm.mailFrom_txt.onKillFocus this.appForm.body_txt.onKillFocus = function(fieldTarget:Object) 		{		this.text = text;	};		var trueListener:Object = new Listener();		var trueListener.click = function(evt:Object){			this.appForm.emailSender_txt.text = validateEmailAddressField();		this.appForm.mailFrom_txt.text = validateEmailAddressField();		}		this.trueBTN_mc.addEventListener("click", trueListener);		this.trueBTN_mc.onRelease = function ():Voi		{		this.dispatchEvent({type:"click", target:this});							if (isMail (this.appForm.mailFrom_txt.text !=== '' || this.appForm.mailFrom_txt.text !=== undefined || this.appForm.mailFrom_txt.text !=== null && this.appForm.emailSender_txt.text !=== '' || this.appForm.emailSender_txt.text !=== undefined || this.appForm.emailSender_txt.text !=== null) 		{			var mailData:LoadVars = new LoadVars ();						mailData.onHTTPStatus = function(httpStatus:Number)			{				this.httpStatus = httpStatus;								//TODO						}						this.appForm.loadVariables (EMAIL_ROUTE, "POST");					}		else		{			Selection.setFocus(this.appForm.mailFrom_txt.text);			this.appForm.body_txt.text = this.appForm.emailSender_txt.text = " ";			this.removeEventListener("click", trueListener);		}				delete this.onRelease;	};	};isMail = function (contentMailString:String):Boolean{		var mail:Boolean = true;		var question:Number;		var atMailString:Number;		var dotString:String;		var blankSpaceString:Number;		var lastString:String;				question = contentMailString.lastIndexOf ("?");		blankSpaceString = contentMailString.lastIndexOf (" ");		atMailString = contentMailString.lastIndexOf ("@");		dotString = contentMailStringlast.IndexOf (".");		lastString = contentMailString.charAt (contentMailString.length - 1);		mail = (lastString != "." && question == -1 && blankSpaceString == -1 && atMailString != -1 & dot != -1 && dot > atMailString) ? true : false;		return mail;};// --Private  FunctionsvalidateEmailAddressField = function(emailValidString:String):Boolean {    		var appRegEx:RegExp = /^[\w.-]+@\w[\w.-]+\.[\w.-]*[a-z][a-z]$/i;		var validateResult:Object = myRegEx.exec(emailValidString);    		 if(validateResult == null)		 {     		 return false;     		 }     	return true;}; detectUserLang = function():Void{	if (System.capabilities.language == "es")	{		this.appForm.mailFrom_txt.text = "introduzca su nombre";		this.appForm.emailSender_txt.text = "introduzca su correo electronico aqui";		this.appForm.body_txt.text = "escriba el contenido de su mensaje";		this.nom_txt.text = "NOMBRE";		this.mail_txt.text = "E-MAIL";		this.message_txt.text = "ASUNTO";		this.trueButtonLabel_txt.txt= "ENVIAR";	}	else if (System.capabilities.language == "en")	{		this.appForm.mailFrom_txt.text = "please introduce your name";		this.appForm.emailSender_txt.text = "please introduce your e-mail";		this.appForm.body_txt.text = "your message";		this.nom_txt.text = "NAME";		this.mail_txt.text = "E-MAIL";		this.message_txt.text = "MESSAGE";		this.trueButtonLabel_txt.txt= "SEND";	}	else if (System.capabilities.language == "fr")	{		this.appForm.mailFrom_txt.text = "votre nom";		this.appForm.emailSender_txt.text = "votre e-mail";		this.appForm.body_txt.text = "votre message";		this.nom_txt.text = "NOM";		this.mail_txt.text = "E-MAIL";		this.message_txt.text = "MESSAGE";		this.trueButtonLabel_txt.txt= "SEND";	}	else	{		this.appForm.mailFrom_txt.text = "please introduce your name";		this.appForm.emailSender_txt.text = "please introduce your e-mail";		this.appForm.body_txt.text = "your message";		this.nom_txt.text = "NAME";		this.mail_txt.text = "E-MAIL";		this.message_txt.text = "MESSAGE";		this.trueButtonLabel_txt.txt= "SEND";	};};	// --Deploy		initAppForm();	};/* * Copyright (c) 2005, Delfi Ramirez <delfin at segonquart.net> * All rights reserved. * * Redistribution and use in source and binary forms, with or without * modification, are permitted provided that the following conditions are met: * * * Redistributions of source code must retain the above copyright notice, this *   list of conditions and the following disclaimer. * * Redistributions in binary form must reproduce the above copyright notice, *   this list of conditions and the following disclaimer in the documentation *   and/or other materials provided with the distribution. * * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE * POSSIBILITY OF SUCH DAMAGE. */