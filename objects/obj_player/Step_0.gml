/// @description Movement
moveRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
moveLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
moveDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
interact =   keyboard_check(ord("E"));
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp ) * walkSpeed)
if(vx != 0 || vy != 0){
	//Detects if there is a collision with an enviroment object and prevents movement if there is
	x = collision_point(x+vx, y, obj_par_enviroment, true, true) ? x : x+vx;
	y = collision_point(x, y+vy, obj_par_enviroment, true, true) ? y : y+vy;
	nearbyNPC = collision_rectangle(x - lookRange, y-lookRange, x+lookRange, y+lookRange, obj_npc, false, true)
	
	//Sets the direction based on the current velocity
	myDirection = (vx > 0) ? playerDirection.right : ((vx < 0) ? playerDirection.left : myDirection);
	myDirection = (vy > 0) ? playerDirection.down : ((vy < 0) ? playerDirection.up : myDirection);
	myState = playerState.walking;
	audio_listener_set_position(0, x, y, 0);
}else {
	myState = playerState.idle;
}

sprite_index = playerSprite[myState][myDirection]

if(nearbyNPC){
		if(npcPrompt == noone || npcPrompt == undefined){
			npcPrompt = fnc_showPrompt(nearbyNPC, nearbyNPC.x, nearbyNPC.y-450)	
		}
		if(!hasGreeted){
			audio_play_sound(snd_greeting01, 1, false);
			hasGreeted = true;
			
		}	
		
		
	}else{
		hasGreeted  = false;
		hasInteraction = true;
		if(instance_exists(obj_textbox)){
			obj_textbox.fadeMe = 2;
		}
		func_dismissPrompt(npcPrompt)
	}
	
	
if(interact){
	if(!hasInteraction){
		hasInteraction = true;
		if(!instance_exists(obj_textbox) && nearbyNPC){
			currentTextBox = instance_create_depth(x, y, -10000, obj_textbox)
			currentTextBox.textToShow = nearbyNPC.myText;
		}else{
			if(instance_exists(obj_textbox)){
				obj_textbox.fadeMe = 2;
			}
		}
	}
}else{
	hasInteraction = false;	
}
//auto depth sorting
depth = -y;

