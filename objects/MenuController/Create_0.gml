#region menu vars
menu_options = ["Start", "How to Play", "Credits", "Quit"];
menu_x = room_width - 100;
menu_y = room_height - 150;
menu_width = 200;
menu_height = 140;
menu_text_color = c_white;
menu_highlight_color = c_lime;

//selector
menu_selected = 0;

#endregion

#region pause vars
pauseMessage = "PAUSED";
pauseX = room_width / 2;
pauseY = room_height / 2;
pauseColor = c_white;
pauseMenu = ["Resume", "Restart", "Quit"];
pauseMenuX = room_width / 2 - 50;
pauseMenuY = room_height / 2;
pauseMenuWidth = 200;
pauseMenuHeight = 80;
pauseMenuColor = c_white;
pauseMenuSelectedColor = c_lime;
pauseMenuSelected = 0;


#endregion