creditsText = "By: Alexander Vousden";
classText = "ITCS 4232"
yearText = "2023"
htpText = "Kill enemies to gain experience and gold. Get enough experience " 
		   + "to level up and increase your power for the current run. Experience and levels "
			+ "reset upon death. Use gold to permanently increase strength and health. These levels "
			+ "persist after death into your next run. You can also use gold to hire allies to attack "
			+ "your enemies for you. These also persist after death. Time is the only limit to how "
			+ "far you can go." 


if(room == RM_CREDITS)
{
	draw_set_color(c_black);	
	draw_text(Textbox_HTP.x, Textbox_HTP.y, creditsText);
	draw_text(Textbox_HTP.x, Textbox_HTP.y + 20, classText);
	draw_text(Textbox_HTP.x, Textbox_HTP.y + 40, yearText);
}

if(room == RM_HTP)
{
	draw_set_color(c_black);	
	draw_text_ext(Textbox_HTP.x, Textbox_HTP.y, htpText, 15, 300);
}