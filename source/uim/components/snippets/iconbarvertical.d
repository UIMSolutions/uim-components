module uim.components.snippets.iconbarvertical;

import uim.components;

class DUIMIconbarVertical : DH5Obj {
	mixin(H5This!"uim-iconbar-vertical");

  override void _init() {
    super._init;
    this.classes("icon-bar-vertical");
  }

  string _backgroundColor = "#555";
  O backgroundColor(this O)(string aColor) { _backgroundColor = aColor; return cast(O)this; }

  string _textColor = "white";
  O textColor(this O)(string aColor) { _textColor = aColor; return cast(O)this; }

  string _hoverColor = "#4CAF50";
  O hoverColor(this O)(string aColor) { _hoverColor = aColor; return cast(O)this; }

  string _activeColor = "white";
  O activeColor(this O)(string aColor) { _activeColor = aColor; return cast(O)this; }

  string _fontSize = "36px";
  O fontSize(this O)(string aColor) { _fontSize = aSize; return cast(O)this; }

  O icon(this O)(string icon, string link = "#", bool active = false) {
    auto myIcon = H5I(["fa", icon]);
    auto myLink = H5A(["href":link], myIcon);
    if (active) myLink.classes("active");
    return this.content(myLink);
  }
  override DCSSRules css() {
    return CSSRules.rules(
[".icon-bar-vertical": ["width":"90px", "background-color":_backgroundColor],
".icon-bar-vertical a": ["display":"block", "text-align":"center", "padding":"16px", "transition":"all 0.3s ease","color":_textColor, "font-size":_fontSize],
".icon-bar-vertical a:hover": ["background-color":_hoverColor],
".icon-bar-vertical a.active": ["background-color":_activeColor]]);
  }

  unittest {
    assert(Assert(UIMIconbarVertical.icon("fa-home", "#", true).icon("fa-search"),
    `<uim-iconbar-vertical><a class="active" href="#"><i class="fa fa-home"></i></a><a href="#"><i class="fa fa-search"></i></a></uim-iconbar-vertical>`));
  }
}
mixin(UIMShort!"IconbarVertical");

unittest {
	assert(Assert(UIMIconbarVertical,`<uim-iconbar-vertical></uim-iconbar-vertical>`));
}
