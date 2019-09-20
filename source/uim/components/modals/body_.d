module uim.components.modals.body_;

import uim.components;

class DUIMModalBody : DUIMComponent {
	mixin(H5This!("H5", `["modal-body"]`));
	override public void init() {
		super.init;
	}
}
mixin(UIMShort!"ModalBody");

unittest {
	
	
	assert(UIMModalBody == `<h5 class="modal-body"></h5>`);
}