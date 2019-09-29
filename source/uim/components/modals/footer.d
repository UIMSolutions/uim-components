module uim.components.modals.footer;

import uim.components;

class DUIMModalFooter : DUIMComponent {
	mixin(H5This!("uim-modal-footer"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalFooter("<slot />");
		return super.toVueComponent		
		.name("UimModalFooter")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ModalFooter");

unittest {
	// assert(UIMModalFooter == `<uim-modal-footer></uim-modal-footer>`);
}