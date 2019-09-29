module uim.components.navbars.togglericon;

import uim.components;

class DUIMNavbarTogglerIcon : DUIMComponent {
	mixin(H5This!("uim-navbar-toggler-icon"));
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4NavbarTogglerIcon("<slot />");
		return super.toVueComponent		
		.name("UimNavbarTogglerIcon")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"NavbarTogglerIcon");

unittest {
	// assert(UIMNavbarTogglerIcon == `<uim-navbar-toggler-icon></uim-navbar-toggler-icon>`);
}