module uim.components.navs.item;

import uim.components;

class DUIMNavItem : DUIMComponent {
	mixin(H5This!("uim-nav-item"));

	O dropdown(this O)(bool mode = true) { return this.classes("dropdown"); }
	mixin(MyContent!("link", "UIMNavLink"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroup("<slot />");
		return super.toVueComponent		
		.name("UimListGroup")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"NavItem");

unittest {
	// assert(UIMNavItem == `<uim-nav-item></uim-nav-item>`);
}