if distance_to_point(mouse_x, mouse_y) <= 0 and cooldown{
	
	if mouse_check_button_pressed(mb_left){
	
		for(var _i = 0; _i < 3; _i++){
		
			for(var _y = 0; _y < 3; _y++){
		
				Object1.grid[# _i, _y] = 0;
		
			}
	
		}
	
		cooldown = false;
		Object1.moves = 0;
		Object1.winner = 0;
		Object1.time = 0;
		Object1.time_true = false;
		Object1.win = true;
		ds_list_clear(Object1.list);
	
	
		instance_destroy(obj_x);
		instance_destroy(obj_cir);
		
		if Object1.play_first = 1{
			Object1.turn = 0;
			Object1.play_first = 0;
		}else{
			Object1.play_first = 1;
			Object1.turn = 1;
		}
		
	}
	
}

if cooldown = false{
	cool++;
	if cool > 120{
	
	cooldown = true;
	cool = 0;
	
	}

}