//AMARILLOS
//color_light = make_color_rgb(249, 224, 52);
//color_dark = make_color_rgb(252, 184, 33);

//AZUL
color_light = make_color_rgb(8, 57, 159);
color_dark = make_color_rgb(52, 240, 250);

current_text = textos.t001;

letter_count = 0;
writing_speed = 0.1;// more is faster.
is_writing_finished = false;

font_enable_effects(fnt_century_gothic_22, true, {
    dropShadowEnable: true,
    dropShadowSoftness: 20,
    dropShadowOffsetX: 3,
    dropShadowOffsetY: 3,
    dropShadowAlpha: .3,
    outlineEnable: true,
    outlineDistance: 1,
    outlineColour: c_black,
    //glowEnable: true,
    //glowEnd: 6,
    //glowColour: c_red,
    //glowAlpha: 4
});

start_writting=false;
alpha_dialog_box = .5;
this_alpha = 0;