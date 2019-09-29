module uim.components.modals.title;

import uim.components;

class DUIMModalTitle : DUIMComponent {
	mixin(H5This!("uim-modal-title"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalTitle("<slot />");
		return super.toVueComponent		
		.name("UimModalTitle")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ModalTitle");

unittest {
	// assert(UIMModalTitle == `<uim-modal-title></uim-modal-title>`);
}