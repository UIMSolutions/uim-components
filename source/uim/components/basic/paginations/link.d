module uim.components.basic.paginations.link;

import uim.components;

@safe:

class DUIMPageLink : DUIMComponent {
	mixin(H5This!("uim-page-link"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5PageLink("<slot />");
		return super.toVUEComponent		
		.name("uim-page-link")
		;
	} */
}
mixin(UIMShort!"PageLink");

unittest {
	assert(Assert(UIMPageLink, `<uim-page-link></uim-page-link>`));
}