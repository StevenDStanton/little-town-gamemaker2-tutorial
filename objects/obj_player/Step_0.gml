/// @description Movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp ) * walkSpeed)


if(vx == 0 && vy == 0){
	
}

if(vx != 0 || vy != 0){
	x += vx;
	y += vy;
}

