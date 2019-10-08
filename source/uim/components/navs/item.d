module uim.components.navs.item;

import uim.components;

class DUIMNavItem : DUIMComponent {
	mixin(H5This!("uim-nav-item"));

	O dropdown(this O)(bool mode = true) { return this.classes("dropdown"); }
	mixin(MyContent!("link", "UIMNavLink"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroup("<slot />");
		return super.toVUEComponent		
		.name("UimListGroup")
		;
	}
}
mixin(UIMShort!"NavItem");

unittest {
	assert(Assert(UIMNavItem, `<uim-nav-item></uim-nav-item>`));
}