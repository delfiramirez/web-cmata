MovieClip.prototype.loadFade = function(img_mc, dest_mc) 
{
	dest_mc._alpha = 100;
	onEnterFrame = function ()
	{
		dest_mc._alpha -= 10;
		
		if (dest_mc._alpha<=0) 
		{
		
			delete this.onEnterFrame;
			meuMVL.loadClip(img_mc, dest_mc);
			
		}
	};
};