module uim.components.modals.header;

import uim.components;

class DUIMModalHeader : DUIMComponent {
	mixin(H5This!("DIV", ["modal-header"]));
	override public void _init() {
		super._init;
	}
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-modal-header")
		;
	}
}
mixin(UIMShort!"ModalHeader");

unittest {
	
	
	assert(Assert(UIMModalHeader, `<div class="modal-header"></div>`));
}