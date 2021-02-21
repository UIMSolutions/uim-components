module uim.components.basic.navbars.text;

import uim.components;

class DUIMNavbarText : DUIMComponent {
	mixin(H5This!("uim-navbar-text"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5NavbarText("<slot />");
		return super.toVUEComponent		
		.name("uim-navbar-text")
		;
	}
}
mixin(UIMShort!"NavbarText");

unittest {
	assert(Assert(UIMNavbarText, `<uim-navbar-text></uim-navbar-text>`));

	// auto f = File("./public/js/uim/components/basic/navbars/text.js", "w"); 
  // f.write(UIMNavbarText.toVUEComponent.toString);
}