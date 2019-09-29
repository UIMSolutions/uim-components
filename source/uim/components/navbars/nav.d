module uim.components.navbars.nav;

import uim.components;

class DUIMNavbarNav : DUIMComponent {
	mixin(H5This!("uim-navbar-nav"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4NavbarNav("<slot />");
		return super.toVueComponent		
		.name("UimNavbarNav")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"NavbarNav");

unittest {
	// assert(UIMNavbarNav == `<uim-navbar-nav></uim-navbar-nav>`);
}