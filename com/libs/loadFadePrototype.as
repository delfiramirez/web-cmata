MovieClip.prototype.loadFade = function(img_mc, dest_mc) 
{
	this.img_mc = mcImg;
	this.dest_mc = mcDest;
	this.alpha_init = this._alpha;
	mcDest._alpha = 100;
	onEnterFrame = function ()
	{
		if (this.mcDest != undefined && this.mcImg != undefined) {
		
		if (this.mcDest>this.alpha_init) {
			if (this._alpha<=this.mcDest) {
				
		mcDest._alpha -= 10;
		
			};
		};
		
		if (mcDest._alpha<=0) 
		{
			
			delete this.onEnterFrame;
			meuMVL.loadClip(mcImg, mcDest);
			
		}
	};
};