module uim.components.basic.navbars.nav;

import uim.components;

@safe:

class DUIMNavbarNav : DUIMComponent {
	mixin(H5This!("uim-navbar-nav"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5NavbarNav("<slot />");
		return super.toVUEComponent		
		.name("uim-navbar-nav")
		;
	} */
}
mixin(UIMShort!"NavbarNav");

unittest {
	assert(Assert(UIMNavbarNav, `<uim-navbar-nav></uim-navbar-nav>`));

	// auto f = File("./public/js/uim/components/basic/navbars/collapse.js", "w"); 
  // f.write(UIMNavbarCollapse.toVUEComponent.toString);
}