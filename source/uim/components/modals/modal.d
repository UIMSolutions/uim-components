module uim.components.modals.modal;

import uim.components;

class DUIMModal : DUIMComponent {
	mixin(H5This!("uim-modal"));

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	unittest {
		assert(Assert(UIMModal.fade, `<uim-modal class="fade"></uim-modal>`));	
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Modal("<slot />");
		return super.toVUEComponent		
		.name("UimModal")
		;
	}
}
mixin(UIMShort!"Modal");
unittest {
	assert(Assert(UIMModal, `<uim-modal></uim-modal>`));
}
