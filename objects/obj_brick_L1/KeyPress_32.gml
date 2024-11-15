if falling==1
{
	rotate++
	
	if rotate==4 rotate=0;
	//else rotate++
	
	if rotate==1
	{
		b0.x+=32
		b1.y+=32
		b2.x-=32
		b2.y+=64
		b3.y+=96
	}
	else if rotate==2
	{
		if b0.x<320 && b1.x<320 && b2.x<320 && b3.x<320
		{
			b0.x-=32
			b1.y-=32
			b2.x+=32
			b2.y-=64
			b3.x+=64
			b3.y-=32
		}
		else 
		{
			b0.x-=64
			b1.x-=32
			b1.y-=32
			//b2.x+=32
			b2.y-=64
			b3.x+=32
			b3.y-=32
		}
	}
	else if rotate==3
	{

		b0.x+=32
		b1.y+=32
		b2.x-=32
		b2.y+=64
		b3.y-=32

	}
	else if rotate==0
	{
		if b0.x>64 && b1.x>64 && b2.x>64 && b3.x>64
		{
			b0.x-=32
			b1.y-=32
			b2.x+=32
			b2.y-=64
			b3.x-=64
			b3.y-=32
		}
		else
		{
			//b0.x-=32
			b1.x+=32
			b1.y-=32
			b2.x+=64
			b2.y-=64
			b3.x-=32
			b3.y-=32
		}
	}
	

}