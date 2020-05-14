module uim.components;

import std.string;

// libraries
public import uim.core;
public import uim.oop;
public import uim.html;
public import uim.javascript;
public import uim.bootstrap;
public import uim.vue;

public import uim.components.snippets;
public import uim.components.complex;

public import uim.components.mixins;
public import uim.components.component;
public import uim.components.alerts;
public import uim.components.badges;
public import uim.components.breadcrumbs;
public import uim.components.buttons;
public import uim.components.cards;
public import uim.components.dropdowns;
public import uim.components.forms;
public import uim.components.jumbotrons;
public import uim.components.lists;
public import uim.components.layout;
public import uim.components.medias;
public import uim.components.modals;
public import uim.components.navs;
public import uim.components.navbars;
public import uim.components.paginations;
public import uim.components.tables;
// public import uim.components.popovers;
public import uim.components.tabs;

string globalStyles() {
  return "";
}
string globalRegistration() {
  return alertsRegistration~
    badgesRegistration~
    breadcrumbsRegistration~
    buttonsRegistration~
    cardsRegistration~
    dropdownsRegistration~
    formsRegistration~
    jumbotronsRegistration~
    listsRegistration~
    layoutRegistration~
    mediasRegistration~
    modalsRegistration~
    navsRegistration~
    navbarsRegistration~
    paginationsRegistration~
    tablesRegistration~
    calendarRegistration~
    complexRegistration;
}



string uimComponentsCss() {
  string[] cssColors = [			
"AliceBlue",
"AntiqueWhite",
"Aqua",
"Aquamarine",
"Azure",
"Beige",
"Bisque",
"Black",
"BlanchedAlmond",
"Blue",
"BlueViolet",
"Brown",
"BurlyWood",
"CadetBlue",
"Chartreuse",
"Chocolate",
"Coral",
"CornflowerBlue",
"Cornsilk",
"Crimson",
"Cyan",
"DarkBlue",
"DarkCyan",
"DarkGoldenRod",
"DarkGray",
"DarkGrey",
"DarkGreen",
"DarkKhaki",
"DarkMagenta",
"DarkOliveGreen",
"DarkOrange",
"DarkOrchid",
"DarkRed",
"DarkSalmon",
"DarkSeaGreen",
"DarkSlateBlue",
"DarkSlateGray",
"DarkSlateGrey",
"DarkTurquoise",
"DarkViolet",
"DeepPink",
"DeepSkyBlue",
"DimGray",
"DimGrey",
"DodgerBlue",
"FireBrick",
"FloralWhite",
"ForestGreen",
"Fuchsia",
"Gainsboro",
"GhostWhite",
"Gold",
"GoldenRod",
"Gray",
"Grey",
"Green",
"GreenYellow",
"HoneyDew",
"HotPink",
"IndianRed ",
"Indigo ",
"Ivory",
"Khaki",
"Lavender",
"LavenderBlush",
"LawnGreen",
"LemonChiffon",
"LightBlue",
"LightCoral",
"LightCyan",
"LightGoldenRodYellow",
"LightGray",
"LightGrey",
"LightGreen",
"LightPink",
"LightSalmon",
"LightSeaGreen",
"LightSkyBlue",
"LightSlateGray",
"LightSlateGrey",
"LightSteelBlue",
"LightYellow",
"Lime",
"LimeGreen",
"Linen",
"Magenta",
"Maroon",
"MediumAquaMarine",
"MediumBlue",
"MediumOrchid",
"MediumPurple",
"MediumSeaGreen",
"MediumSlateBlue",
"MediumSpringGreen",
"MediumTurquoise",
"MediumVioletRed",
"MidnightBlue",
"MintCream",
"MistyRose",
"Moccasin",
"NavajoWhite",
"Navy",
"OldLace",
"Olive",
"OliveDrab",
"Orange",
"OrangeRed",
"Orchid",
"PaleGoldenRod",
"PaleGreen",
"PaleTurquoise",
"PaleVioletRed",
"PapayaWhip",
"PeachPuff",
"Peru",
"Pink",
"Plum",
"PowderBlue",
"Purple",
"RebeccaPurple",
"Red",
"RosyBrown",
"RoyalBlue",
"SaddleBrown",
"Salmon",
"SandyBrown",
"SeaGreen",
"SeaShell",
"Sienna",
"Silver",
"SkyBlue",
"SlateBlue",
"SlateGray",
"SlateGrey",
"Snow",
"SpringGreen",
"SteelBlue",
"Tan",
"Teal",
"Thistle",
"Tomato",
"Turquoise",
"Violet",
"Wheat",
"White",
"WhiteSmoke",
"Yellow",
"YellowGreen"];
  string css = "";
  foreach(color; cssColors) {
    string c = color.toLower;
    css ~= 
    ".text-%s{color:%s !important;}".format(c, c)~
    ".bg-%s{background-color:%s !important;}".format(c, c)~
    ".bgg-%s{background-color:%s;border-color:%s;}".format(c, c, c);
  }
  return css;
}
void 	uimComponentsGlobalRegistration(HTTPServerRequest req, HTTPServerResponse res) {
  auto script = `Date.prototype.getWeek = function() { 
    var onejan = new Date(this.getFullYear(),0,1); 
    return Math.ceil((((this - onejan) / 86400000) + onejan.getDay()+1)/7); 
    }`;
    script ~= `
    Date.prototype.addDays = function(days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
  };`;

  script ~= `
  function startOfWeek(date) {
    var diff = date.getDate() - date.getDay() + (date.getDay() === 0 ? -6 : 1);
    return new Date(date.setDate(diff));
  }`;
  res.writeBody(script~uim.components.globalRegistration, "text/javascript");
}

void 	uimComponentsGlobalStyles(HTTPServerRequest req, HTTPServerResponse res) {
  res.writeBody(uim.components.globalStyles, "text/css");
}

string uimClasses;
void 	uimComponentClasses(HTTPServerRequest req, HTTPServerResponse res) {
  res.writeBody(uimClasses, "text/javascript");
}
