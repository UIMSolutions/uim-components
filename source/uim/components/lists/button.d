module uim.components.lists.button;

import uim.components;

class DUIMListGroupButton : DUIMComponent {
	mixin(H5This!("uim-list-group-button"));

	O active(this O)(bool value = true) { this.classes("active"); return cast(O)this; }
	O disabled(this O)(bool value = true) { _attributes["disabled"] = "true"; return cast(O)this; }

	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroupButton("<slot />");
		return super.toVueComponent		
		.name("UimListGroupButton")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ListGroupButton");

unittest {
	// assert(UIMListGroupButton == `<uim-list-group-button></uim-list-group-button>`);
}