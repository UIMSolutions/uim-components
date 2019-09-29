module uim.components.paginations.link;

import uim.components;

class DUIMPageLink : DUIMComponent {
	mixin(H5This!("uim-page-link"));
	override public void _init() {
		super._init;
	}
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4PageLink("<slot />");
		return super.toVueComponent		
		.name("UimPageLink")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"PageLink");

unittest {
	// assert(UIMPageLink == `<uim-page-link></uim-page-link>`);
}