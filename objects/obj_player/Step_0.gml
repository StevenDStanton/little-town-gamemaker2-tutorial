/// @description Movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp ) * walkSpeed)
idleDirectionIndex = [spr_player_idle_right, spr_player_idle_down, spr_player_idle_left, spr_player_idle_up]
walkDirectionIndex = [spr_player_walk_right, spr_player_walk_down, spr_player_walk_left, spr_player_walk_up]


if(vx == 0 && vy == 0){
	sprite_index = idleDirectionIndex[dir]
}

if(vx != 0 || vy != 0){
	x += vx;
	y += vy;
	dir = (vx > 0) ? 0 : ((vx < 0) ? 2 : dir);
	dir = (vy > 0) ? 1 : ((vy < 0) ? 3 : dir);
	sprite_index = walkDirectionIndex[dir];
}

