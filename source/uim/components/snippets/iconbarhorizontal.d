module uim.components.snippets.iconbarhorizontal;

import uim.components;

class DUIMIconbarHorizontal : DUIMComponent {
	mixin(H5This!"uim-iconbar-horizontal");

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
      [
        ".icon-bar-horizontal": ["width": "100%", "background-color":_backgroundColor, "overflow": "auto"],
        ".icon-bar-horizontal a": ["float":"left", "text-align":"center", "width":"20%", "padding":"12px 0", "transition":"all 0.3s ease", "color":_textColor, "font-size":_fontSize],
        ".icon-bar-horizontal a:hover": ["background-color":_hoverColor],
        ".icon-bar-horizontal a.active": ["background-color":_activeColor]
      ]);
  }

  unittest {
    assert(Assert(UIMIconbarHorizontal.icon("fa-home", "#", true).icon("fa-search"),
    `<uim-iconbar-horizontal><a class="active" href="#"><i class="fa fa-home"></i></a><a href="#"><i class="fa fa-search"></i></a></uim-iconbar-horizontal>`));
  }

  override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = H5Div(["icon-bar-horizontal"], "<slot />");
		return super.toVUEComponent
		.name("UIMIconbarHorizontal");
	}
}
mixin(UIMShort!"IconbarHorizontal");

unittest {
	assert(Assert(UIMIconbarHorizontal,`<uim-iconbar-horizontal></uim-iconbar-horizontal>`));
}
