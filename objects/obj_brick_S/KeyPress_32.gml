if falling==1
{
	rotate++
	
	if rotate==2 rotate=0;
	//else rotate++
	
	if rotate==1
	{
		b2.x-=32
		b3.x-=32
		b3.y+=64
	}
	else if rotate==0
	{
		if b0.x=320 || b1.x=320 || b2.x=320 || b3.x=320
		{
			b0.x-=32
			b1.x-=32
			b3.y-=64
		}
		else
		{
			b2.x+=32
			b3.x+=32
			b3.y-=64
		}
	}
	

}