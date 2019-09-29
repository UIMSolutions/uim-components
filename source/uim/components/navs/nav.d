module uim.components.navs.nav;

import uim.components;

class DUIMNav : DUIMComponent {
	mixin(H5This!("uim-nav"));

	mixin(MyContent!("link", "UIMNavLink"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Nav("<slot />");
		return super.toVueComponent		
		.name("UimNav")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Nav");

unittest {
	// assert(UIMNav == `<uim-nav></uim-nav>`);
}