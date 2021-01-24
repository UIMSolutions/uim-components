module uim.components.modals.body_;

import uim.components;

class DUIMModalBody : DUIMComponent {
	mixin(H5This!("uim-modal-body"));
	override public void _init() {
		super._init;
	}
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ModalBody("<slot />");
		return super.toVUEComponent		
		.name("uim-modal-body")
		;
	}
}
mixin(UIMShort!"ModalBody");

unittest {
	assert(Assert(UIMModalBody, `<uim-modal-body></uim-modal-body>`));
}