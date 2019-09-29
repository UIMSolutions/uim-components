module uim.components.modals.header;

import uim.components;

class DUIMModalHeader : DUIMComponent {
	mixin(H5This!("DIV", `["modal-header"]`));
	override public void _init() {
		super._init;
	}
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalHeader("<slot />");
		return super.toVueComponent		
		.name("UimModalHeader")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ModalHeader");

unittest {
	
	
	// assert(UIMModalHeader == `<div class="modal-header"></div>`);
}