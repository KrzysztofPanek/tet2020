if image_speed>0 image_speed=0
//if image_alpha==0 && instance_exists(creator) image_alpha=creator.image_alpha;
else if !instance_exists(creator) instance_destroy(self);