﻿if (this._currentframe = "appForm"){this._lockroot = true;this.atop();var appForm:Object;var bgForm_mc:MovieClip;initAppForm = function():Void {	detectUserLang();		this.bgForm_mc._alpha = 86;	this.appForm.nombre_txt.onSetFocus = this.appForm.correo_txt.onSetFocus = this.appForm.body_txt.onSetFocus = function(evt:Object) 	{		this.text = " ";	};	this.appForm.nombre_txt.onKillFocus = this.appForm.correo_txt.onKillFocus this.appForm.body_txt.onKillFocus = function(fieldTarget:Object) 	{		this.text = text;	};			this.true_btn.onRelease = function ():Void	{		if (isMail (this.appForm.correo_txt.text !=== '' || this.appForm.correo_txt.text !=== undefined || this.appForm.correo_txt.text !=== null) {			{			varmailData:LoadVars = new LoadVars ();						this.appForm.loadVariables ("inc/email.php", "POST");		}		else		{			Selection.setFocus(this.appForm.correo_txt.text);			this.appForm.body_txt.text = this.appForm.nombre_txt.text = "";		}	};	};isMail = function (contentMailString:String):Boolean{	var mail:Boolean = true;	var question:Number;	var atMailString:Number;	var dotString:String;	var blankSpaceString:Number;	var lastString:String;		question = contentMailString.lastIndexOf ("?");	blankSpaceString = contentMailString.lastIndexOf (" ");	atMailString = contentMailString.lastIndexOf ("@");	dotString = contentMailStringlast.IndexOf (".");	lastString = contentMailString.charAt (contentMailString.length - 1);	mail = (lastString != "." && question == -1 && blankSpaceString == -1 && atMailString != -1 & dot != -1 && dot > atMailString) ? true : false;	return mail;};validateEmailAddressField = function(emailValidString:String):Boolean {    	var appRegEx:RegExp = /^[\w.-]+@\w[\w.-]+\.[\w.-]*[a-z][a-z]$/i;	var validateResult:Object = myRegEx.exec(emailValidString);    	 if(validateResult == null)	 {     	 return false;     	 }     return true;}; detectUserLang = function():Void{	if (System.capabilities.language == "es")	{		this.appForm.correo_txt.text = "introduzca su e-mail";		this.appForm.nombre_txt.text = "introduzca su nombre aqui";		this.appForm.body_txt.text = "escriba el contenido de su mensaje";		this.nom_txt.text = "NOMBRE";		this.mail_txt.text = "E-MAIL";		this.message_txt.text = "ASUNTO";	}	else if (System.capabilities.language == "en")	{		this.appForm.correo_txt.text = "please introduce your name";		this.appForm.nombre_txt.text = "please introduce your e-mail";		this.appForm.body_txt.text = "your message";		this.nom_txt.text = "NAME";		this.mail_txt.text = "E-MAIL";		this.message_txt.text = "MESSAGE";	}	else if (System.capabilities.language == "fr")	{		this.appForm.correo_txt.text = "votre nom";		this.appForm.nombre_txt.text = "votre e-mail";		this.appForm.body_txt.text = "votre message";		this.nom_txt.text = "NOM";		this.mail_txt.text = "E-MAIL";		this.message_txt.text = "MESSAGE";	}	else	{		this.appForm.correo_txt.text = "please introduce your name";		this.appForm.nombre_txt.text = "please introduce your e-mail";		this.appForm.body_txt.text = "your message";		this.nom_txt.text = "NAME";		this.mail_txt.text = "E-MAIL";		this.message_txt.text = "MESSAGE";	};		initAppForm();	}; /* * Copyright (c) 2005, Delfi Ramirez <delfin at segonquart.net> * All rights reserved. * * Redistribution and use in source and binary forms, with or without * modification, are permitted provided that the following conditions are met: * * * Redistributions of source code must retain the above copyright notice, this *   list of conditions and the following disclaimer. * * Redistributions in binary form must reproduce the above copyright notice, *   this list of conditions and the following disclaimer in the documentation *   and/or other materials provided with the distribution. * * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE * POSSIBILITY OF SUCH DAMAGE. */