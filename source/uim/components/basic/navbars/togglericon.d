module uim.components.basic.navbars.togglericon;

import uim.components;

@safe:

class DUIMNavbarTogglericon : DUIMComponent {
	mixin(H5This!("uim-navbar-togglericon"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5NavbarTogglerIcon("<slot />");
		return super.toVUEComponent		
		.name("uim-navbar-togglericon")
		;
	} */
}
mixin(UIMShort!"NavbarTogglericon");

unittest {
	assert(Assert(UIMNavbarTogglericon, `<uim-navbar-togglericon></uim-navbar-togglericon>`));

	// auto f = File("./public/js/uim/components/basic/navbars/togglericon.js", "w"); 
  // f.write(UIMNavbarTogglericon.toVUEComponent.toString);
}