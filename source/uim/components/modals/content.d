module uim.components.modals.content;

import uim.components;

class DUIMModalContent : DUIMComponent {
	mixin(H5This!("DIV", `["modal-content"]`));
	override public void init() {
		super.init;
	}
	O fade(this O)(bool mode = true) { return this.classes("fade"); }
}
mixin(UIMShort!"ModalContent");

unittest {
	
	
	assert(UIMModalContent == `<div class="modal-content"></div>`);
}