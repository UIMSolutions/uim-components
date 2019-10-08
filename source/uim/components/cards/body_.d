﻿module uim.components.cards.body_;

import uim.components;

class DUIMCardBody : DUIMComponent {
	mixin(H5This!("uim-card-body"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardBody("<slot />");
		return super.toVUEComponent		
		.name("UimCardBody")
		;
	}
}
mixin(UIMShort!"CardBody");
unittest {
	assert(Assert(UIMCardBody, `<uim-card-body></uim-card-body>`));
}