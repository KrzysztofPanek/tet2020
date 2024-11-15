attack=instance_place(x,y,obj_knight_attack) 
if instance_exists(attack)
{
	if attack.attack==1
	{
		attack.attack--;
		hp--;
		txt_alpha=1;
	}
}