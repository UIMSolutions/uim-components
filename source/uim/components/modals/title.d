module uim.components.modals.title;

import uim.components;

class DUIMModalTitle : DUIMComponent {
	mixin(H5This!("uim-modal-title"));
}
mixin(UIMShort!"ModalTitle");

unittest {
	assert(UIMModalTitle == `<uim-modal-title></uim-modal-title>`);
}