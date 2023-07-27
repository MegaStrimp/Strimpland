///@description Create

randomize();

#region Disable Automatic Drawing Of The Application Surface
application_surface_draw_enable(false);
#endregion

#region Screen Variables
global.shaders = true;

global.gameWidth = 160;
global.gameHeight = 144;
global.windowScale = 4;
#endregion

#region Misc Variables
global.pause = false;
global.roomPrevious = rm_Setup;
global.speedMult = 1;

global.highscore = 0;
ini_open("save.ini");
global.highscore = ini_read_real("save","highscore",0);
ini_close();
global.score = 0;
global.wave = 0;
waveState = 0;
waveTimer = 0;

global.ability[0] = "NORMAL";
global.ability[1] = "NORMAL";
#endregion

#region Key Configs
global.maxPlayers = 1;

global.keyUp[0] = vk_up;
global.keyDown[0] = vk_down;
global.keyLeft[0] = vk_left;
global.keyRight[0] = vk_right;

global.keyA[0] = ord("Z");
global.keyB[0] = ord("X");

global.keyStart[0] = vk_enter;
global.keySelect[0] = vk_backspace;

global.keyUp[1] = ord("W");
global.keyDown[1] = ord("S");
global.keyLeft[1] = ord("A");
global.keyRight[1] = ord("D");

global.keyA[1] = ord("J");
global.keyB[1] = ord("K");

global.keyStart[1] = vk_enter;
global.keySelect[1] = vk_backspace;
#endregion

#region Palettes
enum palettes
{
	grayscale,
	kirokazeGameboy,
	iceCreamGB,
	mistGB,
	rusticGB,
	AYY4,
	wishGB,
	length
}

global.palette[palettes.grayscale] = spr_Palette_Grayscale;
global.palette[palettes.kirokazeGameboy] = spr_Palette_KirokazeGameboy;
global.palette[palettes.iceCreamGB] = spr_Palette_IceCreamGB;
global.palette[palettes.mistGB] = spr_Palette_MistGB;
global.palette[palettes.rusticGB] = spr_Palette_RusticGB;
global.palette[palettes.AYY4] = spr_Palette_AYY4;
global.palette[palettes.wishGB] = spr_Palette_WishGB;

global.paletteSprite = global.palette[palettes.AYY4];
global.paletteIndex = 1;
#endregion

#region Adapt Display Size To PC Screen
//global.windowScale = scr_Screen_ScaleToScreenSize(); //Set this depending on your preference
#endregion

#region Screen Setup
scr_Screen_Setup(global.gameWidth,global.gameHeight,global.windowScale);
#endregion

#region Set Macros
#macro view view_camera[0]
#endregion

#region Set The Font
global.font = font_add_sprite_ext(spr_Font_Main,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.;,'" + chr(34) + "*+!?-=_/1234567890(){}[]<>&\|",true,2);
draw_set_font(global.font);
#endregion

#region Set Window Caption
window_set_caption("Strimpland");
#endregion

#region Create Necessary Objects
global.camera = instance_create_depth(0,0,-999,obj_Camera);
#endregion

#region Retro Palette Swapper Setup
if (global.shaders) pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);
#endregion