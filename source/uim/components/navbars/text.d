module uim.components.navbars.text;

import uim.components;

class DUIMNavbarText : DUIMComponent {
	mixin(H5This!("uim-navbar-text"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4NavbarText("<slot />");
		return super.toVueComponent		
		.name("UimNavbarText")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"NavbarText");

unittest {
	// assert(UIMNavbarText == `<uim-navbar-text></uim-navbar-text>`);
}