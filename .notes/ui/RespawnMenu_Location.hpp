////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by BAXENATOR, v1.063, #Legygo)
////////////////////////////////////////////////////////

class BAX_RespawnLocation_Title: RscText
{
	idc = 1000;
	text = "Select Respawn (CTRL + B)"; //--- ToDo: Localize;
	x = 31.5 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
	y = 0.5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
	w = 8 * GUI_GRID_CENTER_W;
	h = 2 * GUI_GRID_CENTER_H;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0.8,0.5,0,1};
};
class BAX_Dialog_RespawnLocation_Background: RscText
{
	idc = 1001;
	x = 31.5 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
	y = 2.5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
	w = 8 * GUI_GRID_CENTER_W;
	h = 2 * GUI_GRID_CENTER_H;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0.8,0.5,0,1};
};
class BAX_RespawnLocation_Selection: RscText
{
	idc = 1002;
	text = "(No Location Selected)"; //--- ToDo: Localize;
	x = 31.75 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
	y = 2.75 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
	w = 7.5 * GUI_GRID_CENTER_W;
	h = 1.5 * GUI_GRID_CENTER_H;
	colorText[] = {0.8,0.5,0,1};
	colorBackground[] = {0,0,0,1};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
