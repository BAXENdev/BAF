////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by BAXENATOR, v1.063, #Kocule)
////////////////////////////////////////////////////////

class BaxTitle: RscText
{
	idc = -1;
	text = "title"; //--- ToDo: Localize;
	x = 31.5 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
	y = 0.5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
	w = 8 * GUI_GRID_CENTER_W;
	h = 2 * GUI_GRID_CENTER_H;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0.8,0.5,0,1};
};
class BaxBackground: RscText
{
	idc = -1;
	x = 31.5 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
	y = 2.5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
	w = 8 * GUI_GRID_CENTER_W;
	h = 2 * GUI_GRID_CENTER_H;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0.8,0.5,0,1};
};
class BaxElement: RscText
{
	idc = -1;
	text = "element";
	x = 31.75 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
	y = 2.5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
	w = 7.5 * GUI_GRID_CENTER_W;
	h = 1.5 * GUI_GRID_CENTER_H;
	colorText[] = {0.8,0.5,0,1};
	colorBackground[] = {0,0,0,1};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
