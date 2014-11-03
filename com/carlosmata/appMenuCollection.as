if (this._currentframe = "appCollection")
{

var imagesIntro_array:Array = ["01.jpg", "02.jpg", "03.jpg", "04.jpg", "05.jpg", "06.jpg"];
var imagesPath:String = IMG_imagesPath;
var i:Number = imagesIntro_array.length;
var k:Number = Math.floor(Math.random()*10);

var jewelCollectionBTN_array:Array= ["silverBtn_mc", "goldBtn_mc"];
var jewelCollectionBTNtext_array:Array= ["silver_txt", "gold_txt"];


var appCollectionListener:Object = new Object();
var indicator_txt:String;
var indicatorMC_mc:MovieClip;

meuMVL.addListener(appCollectionListener);

appCollectionListener.onLoadProgress = function(alvo:Object, bytesLoaded:Number, bytesTotal:Number) 
{
	this.indicator_txt.text = Math.round(bytesLoaded/bytesTotal*100)+" %";
};

appCollectionListener.onLoadComplete = function(evt:Object):Void
{
	this.indicatorMC_mc.indicator_txt.text = "";
	
	onEnterFrame = function ():Void
	{
	
		randomImageInit();
		
		_root.indicatorMC_mc._alpha += 10;
		if (_root.indicatorMC_mc._alpha>=100) 
		{
			delete this.onEnterFrame;
		}
	
	};
};

initAppCollection = function():Void
{
	this.stop();
	this._lockroot = true;

	this.foto_mc._alpha = 0;
	this.foto_mc.xScaleTo= 450;
	this.foto_mc.yScaleTo = 450;
	this.foto_mc._y = 0;

	this.titol_txt.autoSize = true;

	this.collection_txt.text = TITLE;
	this.appStick._visible = false;

	this.collection_txt.alphaTo(100, 1, "linear");
};


// -- Public Functions --


collectionJewelButtons = function ()Void
{

	for (var i:Number ; i.jewelCollectionBTN_arraylength; i++)
		{
		
		this.jewelCollectionBTN_array[i]._alpha = jewelCollectionBTNtext_array[i] = 0;
		
		if (this.jewelCollectionBTN_array[i]._alpha ==0 && this.jewelCollectionBTNtext_array[i]._alpha ==0)
		{
		
		onEnterFrame = function():Void
		{
		
		this.silver_txt.alphaTo(100, 2, "linear");
		this.gold_txt.alphaTo(100, 2, "linear", 0.6);
		
		}
		
		 break;
		 
		};

	this.jewelCollectionBTN_array[i].onPress = function():Void 
	
		this._parent.unloadMovie(10);
		
		this.colorTo(0xFDFDFD, 1, "linear");
		
		this._parent.colorTo('0x000000', 1, "linear");;
		
		this.foto_mc.colorTo('0x000000', 0.9, "linear");
		
		if (foto_mc.color == '0x000000') 
		{
		
			this.foto_mc._visible = false;
			
		};
		
		stateButton(clicked);
	};
	
// --Private Functions

stateButton	= function(clicked:String):Void 
{

	 switch (clicked)
	 {
	 
	 case jewelCollectionBTN_array[0]:
	 
		this.moveTo(200, 650);
		this.loadMovie(SILVER_imagesPath, 10);
		
	 break;
		
	 case jewelCollectionBTN_array[1]:
		
		this.loadMovie(GOLD_imagesPath, 10);
		
	 break;
	 
	 default:
	 
	 break;
	 
		};
};

randomImageInit = function (foto_mc:MovieClip):Void
{

	this.alphaTo(99.9999, 1.6, 'easeinquad', 0.6);

	this.loadMovie(imagesPath+imagesIntro_array[k], 1);

};

};

// -- Deploy --

meuMVL.removeListener(appCollectionListener);

this.initAppCollection();

};



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
