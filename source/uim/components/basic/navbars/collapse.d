module uim.components.basic.navbars.collapse;

import uim.components;

@safe:

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

	// auto f = File("./public/js/uim/components/basic/navbars/collapse.js", "w"); 
  // f.write(UIMNavbarCollapse.toVUEComponent.toString);
}