﻿module uim.components.modals.body_;

import uim.components;

class DUIMModalBody : DUIMComponent {
	mixin(H5This!("uim-modal-body"));
	override public void _init() {
		super._init;
	}
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalBody("<slot />");
		return super.toVUEComponent		
		.name("UimModalBody")
		;
	}
}
mixin(UIMShort!"ModalBody");

unittest {
	assert(Assert(UIMModalBody, `<uim-modal-body></uim-modal-body>`));
}