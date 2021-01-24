﻿module uim.components.cards.header;

import uim.components;

class DUIMCardHeader : DUIMComponent {
	mixin(H5This!("uim-card-header"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5CardHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-card-header");
	}
}
mixin(UIMShort!"CardHeader");

unittest {
	assert(Assert(UIMCardHeader, `<uim-card-header></uim-card-header>`));
}
