function Script1(_x, _y){
	

	for(var _p = 0; _p < ds_list_size(list); _p++){
		
		if list[| _p][0] = _x and list[| _p][1] = _y{
			
			return true;
			
		}
		
	}	
	
	return false;
	

}



function scr_win(){
		
	for(var _i = 0; _i < 3; _i++){
		
		if grid[# _i, 0] == grid[# _i, 1] && grid[# _i, 1] == grid[# _i, 2]{
		
			if grid[# _i, 0] != 0{
			
				draw_set_color(c_green);
			
					draw_arrow(100 + _i * 150 + 75, 100, 100 + _i * 150 + 75, 550, false);	
	
				draw_set_color(c_white);
				
				if grid[# _i, 0] == 1{
				
					winner = 1;
				
				}else{
				
					winner = 2;
					
				}
				
				time_true = false;
			
			
				return true;
			
			}
		
		}else if grid[# 0, _i] == grid[# 1, _i] && grid[# 1, _i] == grid[# 2, _i]{
		
			if grid[# 0, _i] != 0{
			
				draw_set_color(c_green);
			
					draw_arrow(100, 100 + _i * 150 + 75, 550, 100 + _i * 150 + 75, false);	
	
				draw_set_color(c_white);
			
				if grid[# 0, _i] == 1{
				
					winner = 1;
				
				}else{
				
					winner = 2;
					
				}
				
				time_true = false;
			
			
				return true;
			
			}
			
		}
	}
	
	if  grid[# 0, 0] == grid[# 1, 1] && grid[# 1, 1] == grid[# 2, 2]{
		
		if grid[# 0, 0] != 0{
			
			draw_set_color(c_green);
			
				draw_arrow(100, 100, 550, 550, false);	
	
			draw_set_color(c_white);
		
			if grid[# 0, 0] == 1{
				
				winner = 1;
				
			}else{
				
				winner = 2;
					
			}
		
			time_true = false;
		
			return true;
			
		}
				
		
	}
	
	if  grid[# 0, 2] == grid[# 1, 1] && grid[# 1, 1] == grid[# 2, 0]{
		
		if grid[# 0, 2] != 0{

			draw_set_color(c_green);
			
				draw_arrow(100, 550, 550, 100, false);	
	
			draw_set_color(c_white);
		
			if grid[# 0, 2] == 1{
				
				winner = 1;
				
			}else{
				
				winner = 2;
					
			}
			
			time_true = false;
		
			return true;
			
		}
			
			
		
	}
	
	
	return false;
	
}

