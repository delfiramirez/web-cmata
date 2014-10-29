if (this._currentframe = "appCollection")
{


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

	this.silverBtn_mc.silver_txt._alpha = this.goldBtn_mc.gold_txt._alpha=0;
	this.silver_txt.alphaTo(100, 2, "linear");
	this.gold_txt.alphaTo(100, 2, "linear", 0.6);

	var jewelCoollectionBTN_array:Array= [];

	this.silverBtn_mc.onPress = function():Void 
	{
		this.silver_txt.colorTo(0xFDFDFD, 1, "linear");
		gold_txt.colorTo('0x000000', 0.6, "linear");
		
		this._parent.menuGold_mc.unloadMovie(10);
		menuSilver_mc.loadMovie(SILVER_imagesPath, 10);
		
		foto_mc.colorTo('0x000000', 0.9, "linear");
		
		if (foto_mc.color == '0x000000') 
		{
			this.foto_mc._visible = false;
		};
	};

	this.goldBtn_mc.onPress = function():Void 
	{

		this.gold_txt.colorTo(0xFDFDFD, 1, "linear");
		silverBtn_mc.colorTo('0x000000', 1, "linear");
		this.silver_txt.colorTo('0x000000', 0.6, "linear");
		silverBtn_mc.moveTo(200, 650);

		this._parent.menuSilver_mc.unloadMovie(10);
		menuGold_mc.loadMovie(GOLD_imagesPath, 10);
		
		foto_mc.colorTo('0x000000', 0.9, "linear");
		
		if (foto_mc.color == '0x000000') 
		{
			this.foto_mc._visible = false;
		};
	};
	

};

var imagesIntro_array:Array = ["01.jpg", "02.jpg", "03.jpg", "04.jpg", "05.jpg", "06.jpg"];
var imagesPath:String = IMG_imagesPath;
var i:Number = imagesIntro_array.length;
var k:Number = Math.floor(Math.random()*10);


randomImageInit = function (foto_mc:MovieClip):Void
{

	this.alphaTo(99.9999, 1.6, 'easeinquad', 0.6);

	this.loadMovie(imagesPath+imagesIntro_array[k], 1);

};

// -- Listeners & Events --

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
		_root.indicatorMC_mc._alpha += 10;
		if (_root.indicatorMC_mc._alpha>=100) 
		{
			delete this.onEnterFrame;
		}
	};
};


// -- Deploy --

this.onEnterFrame.randomImageInit();

meuMVL.removeListener (appCollectionListener);

this.initAppCollection();

}:
