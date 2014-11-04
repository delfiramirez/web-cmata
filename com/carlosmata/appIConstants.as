

// -- String Objects
var authorNameString:String 			= "CARLOS MATA";
var coauthorNameString:String 			= "MARGARITA YARMATS";
var TITLE:String 					= authorNameString + "-" + coauthorNameString + "\n" + " COLLECTION 2005 -נ2006";


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
var SILVER_imagesPath:String 			=   MOVIES_PATH  ."menuPlata2.swf";
var GOLD_imagesPath:String 				=  MOVIES_PATH  . "menuOro2.swf";
var XML_ROUTE_NEWS:String 				= XML_ROUTE + "/" + "slideNews.xml";
var XML_ROUTE_MAP:String 				= XML_ROUTE + "/" + "mapSculptures.xml";


//L--LoadVars

var EMAIL_ROUTE:String 					= "inc" + "/" + "email.php";

// --MovieClip Object


var silverBTN_txt:String;
var goldBTN_txt:String;
var collection_txt:String;
var titol_txt:String;

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
