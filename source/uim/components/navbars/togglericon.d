module uim.components.navbars.togglericon;

import uim.components;

class DUIMNavbarTogglerIcon : DUIMComponent {
	mixin(H5This!("uim-navbar-toggler-icon"));
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4NavbarTogglerIcon("<slot />");
		return super.toVUEComponent		
		.name("UimNavbarTogglerIcon")
		;
	}
}
mixin(UIMShort!"NavbarTogglerIcon");

unittest {
	assert(Assert(UIMNavbarTogglerIcon, `<uim-navbar-toggler-icon></uim-navbar-toggler-icon>`));
}