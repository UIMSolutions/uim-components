module uim.components.modals.header;

import uim.components;

class DUIMModalHeader : DUIMComponent {
	mixin(H5This!("DIV", `["modal-header"]`));
	override public void init() {
		super.init;
	}
}
mixin(UIMShort!"ModalHeader");

unittest {
	
	
	assert(UIMModalHeader == `<div class="modal-header"></div>`);
}