//Calcula el ancho en pixeles.
//image_xscale = width_pixels / sprite_get_width(sprite_index);
//image_yscale = height_pixels / sprite_get_height(sprite_index);

hover = false; //MOUSE IN / OUT

fnt_menu_option = font_add("Arial.TTF", 64, false, false, 0, 0);//Arial, Verdana, Corbel, Georgia, Tahoma, Candara
padding_horizontal = font_get_size(fnt_menu_option)*2;
padding_vertical = font_get_size(fnt_menu_option)/3;
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