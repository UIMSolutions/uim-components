module uim.components.navbars.navbar;

import uim.components;

class DUIMNavBar : DUIMComponent {
	mixin(H5This!("uim-navbar"));

	O light(this O)(bool value = true) { return this.classes("navbar-light"); }
	unittest {
		// assert(UIMNavBar.light == `<nav class="navbar navbar-light"></nav>`);
	}
	
	O dark(this O)(bool value = true) { return this.classes("navbar-dark"); }
	unittest {
		// assert(UIMNavBar.dark == `<nav class="navbar navbar-dark"></nav>`);
	}

	O expand(this O)(string screenSize) { return this.classes("navbar-expand-"~screenSize); }
	unittest {
		// assert(UIMNavBar.expand("lg") == `<uim-navbar class="navbar-expand-lg"></uim-navbar>`);
	}
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Navbar("<slot />");
		return super.toVueComponent		
		.name("UimNavbar")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"NavBar");

unittest {
	// assert(UIMNavBar == `<uim-navbar></uim-navbar>`);
}