module uim.components.modals.body_;

import uim.components;

class DUIMModalBody : DUIMComponent {
	mixin(H5This!("uim-modal-body"));
	override public void _init() {
		super._init;
	}
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalBody("<slot />");
		return super.toVueComponent		
		.name("UimModalBody")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ModalBody");

unittest {
	// assert(UIMModalBody == `<uim-modal-body></uim-modal-body>`);
}