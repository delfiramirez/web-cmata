Array.prototype.flipTo = function(s, disappear) {	var s;	var disappear;		if (s == undefined) 	{			s = " ";			};		if (this.text == " ") 	{			this.text = " ";			};		var T = this._parent.createEmptyMovieClip(this._name+"_flip", this._parent.getNextHighestDepth());	T.txt = s;	T.disappear = disappear == undefined ? 0 : disappear;	T.targetMC= this;	text_array = this.text;	for (var i = 0; i<text_array.length; i++) {		if (text_array.charAt(i) != T.txt.charAt(i)) 		{					T.backto = i;			break;			};	};	T.dir = -1;	T.count = 0;	T.onEnterFrame = function() 	{			var lengthMC= this.targetMC.text.length;		if (++this.count>this.disappear) 		{					lengthMC= lengthMC+T.dir;			this.count = 1;					}		var rndChar = chr(48+Math.random()*74);		if (this.dir<1) 		{					if (lengthMC>T.backto) 			{							this.targetMC.text = this.targetMC.text.substr(0, lengthMC-1)+rndChar;			} 			else 			{							this.dir = 1;				}		}				else		{			if (lengthMC<=T.txt.length) 			{							this.targetMC.text = this.txt.substr(0, lengthMC-1)+rndChar;					} 			else 			{							this.targetMC.text = this.txt;				this.onEnterFrame = undefined;				this.removeMovieClip();						}		}	};};