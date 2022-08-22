/// @description player Action

walkSpeed = 16;
vx = 0;
vy = 0;
dir = 1;
idleDirectionIndex = [spr_player_idle_right, spr_player_idle_down, spr_player_idle_left, spr_player_idle_up]
walkDirectionIndex = [spr_player_walk_right, spr_player_walk_down, spr_player_walk_left, spr_player_walk_up]
nearbyNPC = noone;
lookRange = 30;
hasGreeted = false;
hasInteraction = false;
npcPrompt = noone;

audio_listener_set_position(0, x, y, 0);
audio_listener_set_orientation(0, 0, 1, 0, 0, 0, 1)