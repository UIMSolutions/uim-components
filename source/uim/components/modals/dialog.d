module uim.components.modals.dialog;

import uim.components;

class DUIMModalDialog : DUIMComponent {
	mixin(H5This!("uim-modal-dialog"));

	unittest {
		assert(UIMModalDialog == `<div class="modal-dialog" role="document"></div>`);
	}

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	unittest {
		assert(UIMModalDialog.fade == `<div class="fade modal-dialog" role="document"></div>`);
	}

	O size(this O)(string aSize) { return this.classes("modal-"~aSize); }
	unittest {
		assert(UIMModalDialog.size("sm") == `<div class="modal-dialog modal-sm" role="document"></div>`);
	}

	O centered(this O)(bool mode = true) { return this.classes("modal-dialog-centered"); }
	unittest {
		assert(UIMModalDialog.centered == `<div class="modal-dialog modal-dialog-centered" role="document"></div>`);
	}
}
mixin(UIMShort!"ModalDialog");

unittest {
	assert(UIMModalDialog == "<uim-modal-dialog></uim-modal-dialog>");
}