/// @description Effects and Animation
tracker++;

if(tracker % 2 = 0){
	y+= shift;
}


switch fadeMe{
	case "fadeIn": {
		if(image_alpha < 1){
			image_alpha += fadeSpeed;	
		}
		if(image_alpha	>= 1){
			fadeMe = "fadeVisible"	
		}
	};break;
	case "fadeOut": {
		if(image_alpha > 0){
			image_alpha -= fadeSpeed;	
		}
		if(image_alpha	<= 0){
			fadeMe = "fadeDone"	
			alarm[0] = 2;
		}	
	}; break;
}