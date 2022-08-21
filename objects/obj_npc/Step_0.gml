/// @description Insert description here
// You can write your code in this editor

if(image_speed > 0){
	//checks if the index is the last image
	if(image_index == image_number){
		image_speed = 0;
		alarm[0] = irandom_range(loopRange01, loopRange02);
	}
}

//depth sorting
depth = -y;