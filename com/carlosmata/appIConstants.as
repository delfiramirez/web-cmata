

// -- String Objects
var authorNameString:String 			= "CARLOS MATA";
var coauthorNameString:String 			= "MARGARITA YARMATS";
var productNameString:String 			= "BIJOUX";
var workNameString:String 				= "SCULPTURES";
var TITLE:String 						= authorNameString + "-" + coauthorNameString + "\n" + " COLLECTION 2005 -נ2006";


var titleNameString:String 				= "COLLECTION " authorNameString + "-" + coauthorNameString;
var contactString:String 				= "CONTACT US";
var showroomString:String 				= "SHOWROOM";
var biographyString:String 				= "BIOGRAPHY";
var exhibitionString:String 			= "EXHIBITIONS AND" + newsString;
var newsString:String 					= "NEWS";
var sculptureString:String 				= "SCULPTURES";
var jewelGoldCollectionString:String 	= "BIJOUX" + ":" + "GOLD";
var jewelSilverCollectionString:String 	= "BIJOUX " + ":" + "SILVER";

// --Load

var XML_ROUTE:String 					= "assets" + "/" "xml" + "/";
var IMG_imagesPath:String				= "assets" + "/" + "img" + "/" + "collection". "/";
var MOVIES_PATH 						= "assets" + "/" + "swf". "/" ;
var SILVER_imagesPath:String 			= MOVIES_PATH + "menuPlata2.swf";
var GOLD_imagesPath:String 				= MOVIES_PATH + "menuOro2.swf";
var FORM_PATH:String 					= MOVIES_PATH + "appForm.swf";
var SENDTO_PATH:String					= MOVIES_PATH + "appRecommend.swf"
var XML_ROUTE_NEWS:String 				= XML_ROUTE + "/" + "slideNews.xml";
var XML_ROUTE_MAP:String 				= XML_ROUTE + "/" + "mapSculptures.xml";


//  --Includes

var EMAIL_ROUTE:String 					= "inc" + "/" + "email.php";

// -- Objects & __protos__

var silverBTN_txt:String;
var goldBTN_txt:String;
var collection_txt:String;
var titol_txt:String;

var nom_txt:String;
var email_txt:String;
var message_txt:String;
var emailSender_txt:String;
var mailFrom_txt:String;
var body_txt:String;
var trueButtonLabel_txt:String;

var appTimeline:MovieClip ;

var appRecommend:Object;
var appForm:Object;
var bgForm_mc:MovieClip;
var trueBTN_mc:MovieClip;
var foto_mc:MovieClip;
var silverBtn_mc:MovieClip;
var goldBtn_mc:MovieClip;
var menuGold_mc:MovieClip;
var menuSilver_mc:MovieClip;


var dispatchEvent:Function;
var removeEventListener:Function;
var addEventListener:Function;

// --Calculus and etceteras

var appDate:Date = new Date();

var epochAppTime:Number = Math.round(appDate.valueOf()/1000);

//trace(now.valueOf(), epochAppTime);


// -- System 

System.security.allowDomain("www.carlosmata.eu", "*.segonquart.net");

Stage.showMenu = false;
Stage.scaleMode = "noScale";




/*
 * Copyright (c) 2005, Delfi Ramirez <delfin at segonquart.net>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */
