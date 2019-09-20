module uim.components.modals.modal;

import uim.components;

class DUIMModal : DUIMComponent {
	mixin(H5This!("uim-modal"));

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	unittest {
		assert(UIMModal.fade == `<div class="fade modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);	
	}
}
mixin(UIMShort!"Modal");
unittest {
	assert(UIMModal == `<uim-modal></uim-modal>`);
}
