﻿module uim.components.cards.footer;

import uim.components;

class DUIMCardFooter : DUIMComponent {
	mixin(H5This!("uim-card-footer"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5CardFooter("<slot />");
		return super.toVUEComponent		
		.name("uim-card-footer");
	}
}
mixin(UIMShort!"CardFooter");
unittest {
	assert(Assert(UIMCardFooter, `<uim-card-footer></uim-card-footer>`));
}
