/// @description player Action

walkSpeed = 16;
vx = 0;
vy = 0;
playerSprite = [];
playerSprite[playerState.idle] = [spr_player_idle_right, spr_player_idle_down, spr_player_idle_left, spr_player_idle_up]
playerSprite[playerState.walking] = [spr_player_walk_right, spr_player_walk_down, spr_player_walk_left, spr_player_walk_up];
playerSprite[playerState.pickingUp] = [spr_player_pickUp_right, spr_player_pickUp_down, spr_player_pickUp_left, spr_player_pickUp_up];
playerSprite[playerState.carrying] = [spr_player_carry_right, spr_player_carry_down, spr_player_carry_left, spr_player_carry_up];
playerSprite[playerState.carryIdle] = [spr_player_carryIdle_right, spr_player_carryIdle_down, spr_player_carryIdle_left, spr_player_carryIdle_up];
playerSprite[playerState.puttingDown] = [spr_player_putDown_right, spr_player_putDown_down, spr_player_putDown_left, spr_player_putDown_up];

nearbyNPC = noone;
lookRange = 30;
hasGreeted = false;
hasInteraction = false;
npcPrompt = noone;
myDirection = playerDirection.down;
myState = playerState.idle;

audio_listener_set_position(0, x, y, 0);
audio_listener_set_orientation(0, 0, 1, 0, 0, 0, 1)

