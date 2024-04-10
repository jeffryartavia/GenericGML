scroll_speed = 1.5;
var _gap = "\n\n\n\n\n\n\n\n";
credits_text = 
"Desarrollado por:                              " + _gap +
"Coordinación general: Yenory Carballo" + "\n" +
"                                      Eduardo Ramírez" + _gap +
"Asistencia en cordinación: Marvin Solano / Andrea Pérez" + _gap +
"Productor del juego: Danilo Baeza" + _gap +
"Desarrollo de software: Jeffry Artavia Murillo" + _gap +
"Composición musical: Gabriel Morera" + _gap +
"Diseñador gráfico: Karen Gonzáles" + "\n" +
"                            Diego Vásquez" + _gap +
"Patrocinador: ...";

fnt_credits = font_add("Arial.TTF", 40, true, true, 32, 128);
font_enable_sdf(fnt_credits, true);

font_enable_effects(fnt_credits, true, {
    dropShadowEnable: true,
    dropShadowSoftness: 30,
    dropShadowOffsetX: 5,
    dropShadowOffsetY: 5,
    dropShadowAlpha: .8,
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black,
    //glowEnable: true,
    //glowEnd: 6,
    //glowColour: c_red,
    //glowAlpha: 4
});