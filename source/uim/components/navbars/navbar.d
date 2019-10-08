module uim.components.navbars.navbar;

import uim.components;

class DUIMNavBar : DUIMComponent {
	mixin(H5This!("uim-navbar"));

	O light(this O)(bool value = true) { if (value) this.classes("navbar-light"); return cast(O)this; }
	unittest {
		assert(Assert(UIMNavBar.light, `<uim-navbar class="navbar-light"></uim-navbar>`));
	}
	
	O dark(this O)(bool value = true) { if (value) this.classes("navbar-dark"); return cast(O)this; }
	unittest {
		assert(Assert(UIMNavBar.dark, `<uim-navbar class="navbar-dark"></uim-navbar>`));
	}

	O expand(this O)(string screenSize) { if (screenSize) this.classes("navbar-expand-"~screenSize); return cast(O)this; }
	unittest {
		assert(Assert(UIMNavBar.expand("lg"), `<uim-navbar class="navbar-expand-lg"></uim-navbar>`));
	}
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Navbar("<slot />");
		return super.toVUEComponent		
		.name("UimNavbar")
		;
	}
}
mixin(UIMShort!"NavBar");

unittest {
	assert(Assert(UIMNavBar, `<uim-navbar></uim-navbar>`));
}