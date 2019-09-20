module uim.components.modals.footer;

import uim.components;

class DUIMModalFooter : DUIMComponent {
	mixin(H5This!("uim-modal-footer"));
}
mixin(UIMShort!"ModalFooter");

unittest {
	assert(UIMModalFooter == `<uim-modal-footer></uim-modal-footer>`);
}