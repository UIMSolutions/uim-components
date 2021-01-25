module uim.components.basic.paginations.link;

import uim.components;

class DUIMPageLink : DUIMComponent {
	mixin(H5This!("uim-page-link"));
	override public void _init() {
		super._init;
	}
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5PageLink("<slot />");
		return super.toVUEComponent		
		.name("uim-page-link")
		;
	}
}
mixin(UIMShort!"PageLink");

unittest {
	assert(Assert(UIMPageLink, `<uim-page-link></uim-page-link>`));
}