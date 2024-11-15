attack=instance_place(x,y,obj_worm_attack) 
//attack.bite--;
if instance_exists(attack)
{
	if attack.bite==1
	{
		attack.bite--;
		hp--;
		txt_alpha=1;
	}
}