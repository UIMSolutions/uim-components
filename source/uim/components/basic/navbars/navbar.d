module uim.components.basic.navbars.navbar;

import uim.components;

@safe:

class DUIMNavbar : DUIMComponent {
	mixin(H5This!("uim-navbar"));

	O light(this O)(bool value = true) { if (value) this.classes("navbar-light"); return cast(O)this; }
	unittest {
		assert(Assert(UIMNavbar.light, `<uim-navbar class="navbar-light"></uim-navbar>`));
	}
	
	O dark(this O)(bool value = true) { if (value) this.classes("navbar-dark"); return cast(O)this; }
	unittest {
		assert(Assert(UIMNavbar.dark, `<uim-navbar class="navbar-dark"></uim-navbar>`));
	}

	O expand(this O)(string screenSize) { if (screenSize) this.classes("navbar-expand-"~screenSize); return cast(O)this; }
	unittest {
		assert(Assert(UIMNavbar.expand("lg"), `<uim-navbar class="navbar-expand-lg"></uim-navbar>`));
	}
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Navbar("<slot />");
		return super.toVUEComponent		
		.name("uim-navbar")
		;
	}
}
mixin(UIMShort!"Navbar");

unittest {
	assert(Assert(UIMNavbar, `<uim-navbar></uim-navbar>`));

	// auto f = File("./public/js/uim/components/basic/navbars/navbar.js", "w"); 
  // f.write(UIMNavbar.toVUEComponent.toString);
}