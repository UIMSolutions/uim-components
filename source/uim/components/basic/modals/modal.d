module uim.components.basic.modals.modal;

import uim.components;

@safe:

class DUIMModal : DUIMComponent {
	mixin(H5This!("uim-modal"));

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	unittest {
		assert(Assert(UIMModal.fade, `<uim-modal class="fade"></uim-modal>`));	
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Modal("<slot />");
		return super.toVUEComponent		
		.name("uim-modal")
		;
	}
}
mixin(UIMShort!"Modal");
unittest {
	assert(Assert(UIMModal, `<uim-modal></uim-modal>`));

	// auto f = File("./public/js/uim/components/basic/modals/modal.js", "w"); 
  // f.write(UIMModal.toVUEComponent.toString);
}
