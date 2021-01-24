module uim.components.navbars.nav;

import uim.components;

class DUIMNavbarNav : DUIMComponent {
	mixin(H5This!("uim-navbar-nav"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5NavbarNav("<slot />");
		return super.toVUEComponent		
		.name("uim-navbar-nav")
		;
	}
}
mixin(UIMShort!"NavbarNav");

unittest {
	assert(Assert(UIMNavbarNav, `<uim-navbar-nav></uim-navbar-nav>`));
}