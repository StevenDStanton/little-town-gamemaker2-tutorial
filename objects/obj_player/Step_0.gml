/// @description Movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp ) * walkSpeed)

if(vx != 0 || vy != 0){
	//Detects if there is a collision with an enviroment object and prevents movement if there is
	x = collision_point(x+vx, y, obj_par_enviroment, true, true) ? x : x+vx;
	y = collision_point(x, y+vy, obj_par_enviroment, true, true) ? y : y+vy;
	nearbyNPC = collision_rectangle(x - lookRange, y-lookRange, x+lookRange, y+lookRange, obj_npc, false, true)
	if(nearbyNPC){
		show_debug_message("Found NPC")
	}else{
		show_debug_message("No NPC")
	}
	
	//Sets the direction based on the current velocity
	dir = (vx > 0) ? 0 : ((vx < 0) ? 2 : dir);
	dir = (vy > 0) ? 1 : ((vy < 0) ? 3 : dir);
	sprite_index = walkDirectionIndex[dir];
}else {
	sprite_index = idleDirectionIndex[dir]
}
//auto depth sorting
depth = -y;

