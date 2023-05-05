#region menu
if(room == Title || room == RM_CREDITS || room == RM_HTP)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	for (var i = 0; i < array_length_1d(menu_options); i++) {
	    var item_y = menu_y + i * 30;
	    if (i == menu_selected) {
	        draw_set_color(menu_highlight_color);
	        draw_text(menu_x, item_y, menu_options[i]);
	    } else {
	        draw_set_color(menu_text_color);
	        draw_text(menu_x, item_y, menu_options[i]);
	    }
	}

	if (keyboard_check_pressed(ord("W"))) {
	    menu_selected--;
	    if (menu_selected < 0) {
	        menu_selected = array_length_1d(menu_options) - 1;
	    }
	}
	if (keyboard_check_pressed(ord("S"))) {
	    menu_selected++;
	    if (menu_selected >= array_length_1d(menu_options)) {
	        menu_selected = 0;
	    }
	}
	if (keyboard_check_pressed(vk_enter)) {
	    switch (menu_selected) {
	        case 0:
	            // Start
				room_goto(Room1);
	            break;
	        case 1:
	            // How to Play
				room_goto(RM_HTP);
	            break;
	        case 2:
	            // Credits 
				room_goto(RM_CREDITS);
	            break;
	        case 3:
	            // Quit
				if(room == Title)
				{
					game_end();
				} else room_goto(Title);
	            break;
	    }
	}
}
#endregion


