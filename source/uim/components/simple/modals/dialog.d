module uim.components.modals.dialog;

import uim.components;

class DUIMModalDialog : DUIMComponent {
	mixin(H5This!("uim-modal-dialog"));

	unittest {
		assert(Assert(UIMModalDialog, `<uim-modal-dialog></uim-modal-dialog>`));
	}

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	unittest {
		assert(Assert(UIMModalDialog.fade, `<uim-modal-dialog class="fade"></uim-modal-dialog>`));
	}

	O size(this O)(string aSize) { return this.classes("modal-"~aSize); }
	unittest {
		assert(Assert(UIMModalDialog.size("sm"), `<uim-modal-dialog class="modal-sm"></uim-modal-dialog>`));
	}

	O centered(this O)(bool mode = true) { return this.classes("modal-dialog-centered"); }
	unittest {
		assert(Assert(UIMModalDialog.centered, `<uim-modal-dialog class="modal-dialog-centered"></uim-modal-dialog>`));
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ModalDialog("<slot />");
		return super.toVUEComponent		
		.name("uim-modal-dialog")
		;
	}
}
mixin(UIMShort!"ModalDialog");

unittest {
	assert(Assert(UIMModalDialog, "<uim-modal-dialog></uim-modal-dialog>"));
}