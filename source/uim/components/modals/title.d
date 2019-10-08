module uim.components.modals.title;

import uim.components;

class DUIMModalTitle : DUIMComponent {
	mixin(H5This!("uim-modal-title"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalTitle("<slot />");
		return super.toVUEComponent		
		.name("UimModalTitle")
		;
	}
}
mixin(UIMShort!"ModalTitle");

unittest {
	assert(Assert(UIMModalTitle, `<uim-modal-title></uim-modal-title>`));
}