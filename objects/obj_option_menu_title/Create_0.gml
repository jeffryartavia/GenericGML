//Calcula el ancho en pixeles.
//image_xscale = width_pixels / sprite_get_width(sprite_index);
//image_yscale = height_pixels / sprite_get_height(sprite_index);

padding_horizontal = 60;
padding_vertical = 20;

hover = false; //MOUSE IN / OUT

fnt_menu_option = font_add("Arial.TTF", 64, false, false, 0, 0);
font_enable_sdf(fnt_menu_option, true);

font_enable_effects(fnt_menu_option, true, {
    dropShadowEnable: true,
    dropShadowSoftness: 40,
    dropShadowOffsetX: 5,
    dropShadowOffsetY: 5,
    dropShadowAlpha: 1,
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black,
    //glowEnable: true,
    //glowEnd: 6,
    //glowColour: c_red,
    //glowAlpha: 4
});

ya_sono = true;