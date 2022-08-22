// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_showPrompt(_object, _x, _y){
	if(instance_exists(_object)){
		if(!instance_exists(obj_textbox) && !instance_exists(obj_prompt)){
			_instance = instance_create_depth(_x, _y, -10000, obj_prompt);	
			return _instance;
		}
	}
}

function func_dismissPrompt(_whichPrompt ){
		if(_whichPrompt != undefined && instance_exists(_whichPrompt)){
			_whichPrompt.fadeMe = "fadeOut";
			obj_player.npcPrompt = noone;
		}
}