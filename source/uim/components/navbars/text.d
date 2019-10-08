module uim.components.navbars.text;

import uim.components;

class DUIMNavbarText : DUIMComponent {
	mixin(H5This!("uim-navbar-text"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4NavbarText("<slot />");
		return super.toVUEComponent		
		.name("UimNavbarText")
		;
	}
}
mixin(UIMShort!"NavbarText");

unittest {
	assert(Assert(UIMNavbarText, `<uim-navbar-text></uim-navbar-text>`));
}