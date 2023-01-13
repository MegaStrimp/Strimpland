///@description Post-Draw

#region Screen Palette
if ((global.shaders) and (global.paletteSprite != 0)) pal_swap_set(global.paletteSprite,global.paletteIndex,false);
draw_surface_stretched(application_surface,0,0,global.gameWidth * global.windowScale,global.gameHeight * global.windowScale);
if ((global.shaders) and (global.paletteSprite != 0)) pal_swap_reset();
#endregion