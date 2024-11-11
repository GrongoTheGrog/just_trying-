var _com_x = 100;
var _com_y = 100;

///vertical

draw_rectangle(_com_x + add_x, _com_y, _com_x + add_x + 4, _com_y + 450, false);
draw_rectangle(_com_x + add_x + 150, _com_y, _com_x + add_x + 150 + 4, _com_y + 450, false);


//horizontal

draw_rectangle(_com_x, _com_y + add_x, _com_y + 450, _com_y + add_x + 4, false);
draw_rectangle(_com_x, _com_y + add_x + 150, _com_y + 450, _com_y + add_x + 150 + 4, false);


var _grid_x = 0;
var _grid_y = 0;

for(var _i = 100; _i < 550; _i += 152){
	
	_grid_y = 0;
	
	for(var _y = 100; _y < 550; _y += 152){
	
		if mouse_x >= _i and mouse_x <= _i + 152{
		
			if  mouse_y >= _y and mouse_y <= _y + 150{
			
				if grid[# _grid_x, _grid_y] = 0{
			
					draw_set_alpha(0.3);
			
					draw_rectangle(_i , _y , _i + 150, _y + 150, false);
				
					draw_set_alpha(1);
			
				}
				
				if !scr_win(){
					
					if mouse_check_button_pressed(mb_left){
				
						if !Script1(_i, _y){
				
							if ds_list_find_index(list, [_i, _y]) = -1{
				
								if turn{
						
									instance_create_layer(_i, _y, "Instances", obj_x);
									turn = 0;
						
									ds_list_add(list, [_i, _y]);
									ds_grid_add(grid, _grid_x, _grid_y, 1);
									
						
								}else{
					
									instance_create_layer(_i, _y, "Instances", obj_cir);
									turn = 1;
						
									ds_list_add(list, [_i, _y]);
									ds_grid_add(grid, _grid_x, _grid_y, 2);
									
									
								}
								
								moves++
								
								if !time_true{
									
									time_true = true;
									
								}
						
							}
						
						}
					
					}
				
				}
				
			}
		
		}
	
		_grid_y++;
	
	}
	
	_grid_x++;
	
}

if scr_win(){
	
		if win = true{
	
			ds_list_add(list_win, [moves, time, winner]);
		
			moves = 0;
			winner = 0;
			time = 0;
			time_true = false;
			win = false;
		}

}



for(var _i = 0; _i < ds_list_size(list_win); _i++){
	if ds_list_size(list_win) >= 1{
		
		var _mult = 70;
		
		draw_set_color(c_white);
	
			draw_text(600, 100 + _mult * _i, "Moves: " + string(list_win[| _i][0]));
			draw_text(600, 120 + _mult * _i, "Time: " + string(list_win[| _i][1] / 60) + " seconds");
			draw_text(600, 140 + _mult * _i, "Winner: ")
	
	
		if list_win[| _i][2] = 1{

			draw_sprite_ext(Sprite1, 0, 690, 140 + _i * _mult, 0.1, 0.1, 1, c_white, 1);
		
		}else{
	
			draw_sprite_ext(Sprite1_1, 0, 690, 140 + _i * _mult, 0.1, 0.1, 1, c_white, 1);
	
		}
	}
}

scr_win();

