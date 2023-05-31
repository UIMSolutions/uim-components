module uim.components;

import std.string;

// libraries
public import uim.core;
public import uim.oop;
public import uim.html;
public import langs.javascript;
public import uim.bootstrap;
// public import uim.vue;

public import uim.components.apps;
public import uim.components.classes;
public import uim.components.snippets;
public import uim.components.complex;
public import uim.components.basic;
public import uim.components.layout;

public import uim.components.mixins;
public import uim.components.component;
// public import uim.components.popovers;

string globalStyles() {
  return "";
}
/* string globalRegistration() {
  return alertsRegistration~
    badgesRegistration~
    breadcrumbsRegistration~
    buttonsRegistration~
    cardsRegistration~
    dropdownsRegistration~
    formsRegistration~
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
} */

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
  res.writeBody(/* script~uim.components.globalRegistration */ "", "text/javascript");
}

void 	uimComponentsGlobalStyles(HTTPServerRequest req, HTTPServerResponse res) {
  res.writeBody(uim.components.globalStyles, "text/css");
}

string uimClasses;
void 	uimComponentClasses(HTTPServerRequest req, HTTPServerResponse res) {
  res.writeBody(uimClasses, "text/javascript");
}

/* unittest {
  auto f = File("./public/js/all.js", "w"); 
  f.write(UIMAlert.toVUEComponent.toString);
  f.write(UIMAlertHeading.toVUEComponent.toString);
  f.write(UIMAlertLink.toVUEComponent.toString);
  f.write(UIMBadge.toVUEComponent.toString);
  f.write(UIMBreadcrumb.toVUEComponent.toString);
  f.write(UIMButton.toVUEComponent.toString);
  f.write(UIMButtonGroup.toVUEComponent.toString);
  f.write(UIMButtonToolbar.toVUEComponent.toString);
  f.write(UIMCardBlock.toVUEComponent.toString);
  f.write(UIMCalendar.toVUEComponent.toString);
  f.write(UIMCalendarDay.toVUEComponent.toString);
  f.write(UIMCalendarEvent.toVUEComponent.toString);
  f.write(UIMCalendarEvents.toVUEComponent.toString);
  f.write(UIMCard.toVUEComponent.toString);
  f.write(UIMCardBlock.toVUEComponent.toString);
  f.write(UIMCardBody.toVUEComponent.toString);
  f.write(UIMCardColumns.toVUEComponent.toString);
  f.write(UIMCardDeck.toVUEComponent.toString);
  f.write(UIMCardDeckwrapper.toVUEComponent.toString);
  f.write(UIMCardFooter.toVUEComponent.toString);
  f.write(UIMCardHeader.toVUEComponent.toString);
  f.write(UIMCardImage.toVUEComponent.toString);
  f.write(UIMCardLink.toVUEComponent.toString);
  f.write(UIMCardSubtitle.toVUEComponent.toString);
  f.write(UIMCardText.toVUEComponent.toString);
  f.write(UIMCardTitle.toVUEComponent.toString);
  f.write(UIMDropdownButton.toVUEComponent.toString);
  f.write(UIMDropdownDivider.toVUEComponent.toString);
  f.write(UIMDropdown.toVUEComponent.toString);
  f.write(UIMDropdownHeader.toVUEComponent.toString);
  f.write(UIMDropdownLink.toVUEComponent.toString);
  f.write(UIMDropdownMenu.toVUEComponent.toString);
  // f.write(UIMDropdownTogglelink.toVUEComponent.toString);
  f.write(UIMFormCheckbox.toVUEComponent.toString);
  f.write(UIMFormCheckInput.toVUEComponent.toString);
  f.write(UIMFormCheckLabel.toVUEComponent.toString);
  f.write(UIMInputButton.toVUEComponent.toString);
  f.write(UIMCheckbox.toVUEComponent.toString);
  f.write(UIMInputColor.toVUEComponent.toString);
  f.write(UIMInputDate.toVUEComponent.toString);
  f.write(UIMInputDateTime.toVUEComponent.toString);
  f.write(UIMInputEmail.toVUEComponent.toString);
  f.write(UIMInputFile.toVUEComponent.toString);
  f.write(UIMInputHidden.toVUEComponent.toString);
  f.write(UIMInputImage.toVUEComponent.toString);
  f.write(UIMInput.toVUEComponent.toString);
  f.write(UIMInputMonth.toVUEComponent.toString);
  f.write(UIMInputNumber.toVUEComponent.toString);
  f.write(UIMPassword.toVUEComponent.toString);	
  f.write(UIMRadio.toVUEComponent.toString);
  f.write(UIMInputRange.toVUEComponent.toString);
  f.write(UIMInputSearch.toVUEComponent.toString);
  f.write(UIMInputSearch.toVUEComponent.toString);
  f.write(UIMInputSelect.toVUEComponent.toString);
  f.write(UIMInputSubmit.toVUEComponent.toString);
  f.write(UIMInputTel.toVUEComponent.toString);
  f.write(UIMInputText.toVUEComponent.toString);
  f.write(UIMInputTextarea.toVUEComponent.toString);
  f.write(UIMInputTime.toVUEComponent.toString);
  f.write(UIMInputUrl.toVUEComponent.toString);
  f.write(UIMInputWeek.toVUEComponent.toString);
  f.write(UIMListButton.toVUEComponent.toString);
  f.write(UIMListInline.toVUEComponent.toString);
  f.write(UIMListInlineItem.toVUEComponent.toString);
  f.write(UIMListItem.toVUEComponent.toString);
  f.write(UIMListLink.toVUEComponent.toString);
  f.write(UIMListLinks.toVUEComponent.toString);
  f.write(UIMMediaBody.toVUEComponent.toString);
  f.write(UIMMedia.toVUEComponent.toString);
  f.write(UIMModalBody.toVUEComponent.toString);
  f.write(UIMModalButton.toVUEComponent.toString);
  f.write(UIMModalContent.toVUEComponent.toString);
  f.write(UIMModalDialog.toVUEComponent.toString);
  f.write(UIMModalFooter.toVUEComponent.toString);
  f.write(UIMModalHeader.toVUEComponent.toString);
  f.write(UIMModal.toVUEComponent.toString);
  f.write(UIMModalTitle.toVUEComponent.toString);
  f.write(UIMNavbarBrand.toVUEComponent.toString);
  f.write(UIMNavbarCollapse.toVUEComponent.toString);
  f.write(UIMNavbarCollapse.toVUEComponent.toString);
  f.write(UIMNavbar.toVUEComponent.toString);
  f.write(UIMNavbarText.toVUEComponent.toString);
  f.write(UIMNavbarToggler.toVUEComponent.toString);
  f.write(UIMNavbarTogglericon.toVUEComponent.toString);
  f.write(UIMNavItem.toVUEComponent.toString);
  f.write(UIMNavLink.toVUEComponent.toString);
  f.write(UIMNavList.toVUEComponent.toString);
  f.write(UIMNav.toVUEComponent.toString);
  f.write(UIMTableBody.toVUEComponent.toString);
  f.write(UIMTableCell.toVUEComponent.toString);
  f.write(UIMTableFooter.toVUEComponent.toString);
  f.write(UIMTableHeader.toVUEComponent.toString);
  f.write(UIMTableRow.toVUEComponent.toString);
  f.write(UIMTable.toVUEComponent.toString);
  f.write(UIMTabContent.toVUEComponent.toString);
  f.write(UIMTabList.toVUEComponent.toString);
  f.write(UIMTabPane.toVUEComponent.toString);
  f.write(UIMBlog.toVUEComponent.toString);
  f.write(UIMChatbox.toVUEComponent.toString);
  f.write(UIMChatboxInbox.toVUEComponent.toString);
  f.write(UIMChat.toVUEComponent.toString);
  f.write(UIMChatContact.toVUEComponent.toString);
  f.write(UIMChatContacts.toVUEComponent.toString);
  f.write(UIMChatMessage.toVUEComponent.toString);
  f.write(UIMChatMessages.toVUEComponent.toString);
  f.write(UIMChatUser.toVUEComponent.toString);
  f.write(UIMChatUsers.toVUEComponent.toString);
}

string toVue3() {
  string result;

  // Accordions
  result ~= UIMAccordion.toVue3("vue")~";";
  result ~= UIMAccordionItem.toVue3("vue")~";";
  result ~= UIMAccordionHeader.toVue3("vue")~";";
  result ~= UIMAccordionButton.toVue3("vue")~";";
  result ~= UIMAccordionCollapse.toVue3("vue")~";";
  result ~= UIMAccordionButton.toVue3("vue")~";";
  result ~= UIMAccordionButton.toVue3("vue")~";";

  // Alerts
  result ~= UIMAlert.toVue3("vue")~";";
  result ~= UIMAlertHeading.toVue3("vue")~";";
  result ~= UIMAlertLink.toVue3("vue")~";";

  return result;
} */

string vue3components;
