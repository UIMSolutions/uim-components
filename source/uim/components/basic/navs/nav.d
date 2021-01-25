module uim.components.basic.navs.nav;

import uim.components;

class DUIMNav : DUIMComponent {
	mixin(H5This!("uim-nav"));

	mixin(MyContent!("link", "UIMNavLink"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Nav("<slot />");
		return super.toVUEComponent		
		.name("uim-nav")
		;
	}
}
mixin(UIMShort!"Nav");

unittest {
	assert(Assert(UIMNav, `<uim-nav></uim-nav>`));

	auto f = File("./public/js/uim/components/basic/navs/nav.js", "w"); 
  f.write(UIMNav.toVUEComponent.toString);
}