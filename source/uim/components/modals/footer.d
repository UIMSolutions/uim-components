module uim.components.modals.footer;

import uim.components;

class DUIMModalFooter : DUIMComponent {
	mixin(H5This!("uim-modal-footer"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalFooter("<slot />");
		return super.toVUEComponent		
		.name("UimModalFooter")
		;
	}
}
mixin(UIMShort!"ModalFooter");

unittest {
	assert(Assert(UIMModalFooter, `<uim-modal-footer></uim-modal-footer>`));
}