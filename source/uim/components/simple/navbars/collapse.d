module uim.components.navbars.collapse;

import uim.components;

class DUIMNavbarCollapse : DUIMComponent {
	mixin(H5This!("uim-navbar-collapse"));

		override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5NavbarCollapse("<slot />");
		return super.toVUEComponent		
		.name("uim-navbar-collapse")
		;
	}
}
mixin(UIMShort!"NavbarCollapse");

unittest {
	assert(Assert(UIMNavbarCollapse, `<uim-navbar-collapse></uim-navbar-collapse>`));
}