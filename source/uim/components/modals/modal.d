module uim.components.modals.modal;

import uim.components;

class DUIMModal : DUIMComponent {
	mixin(H5This!("uim-modal"));

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	unittest {
		// assert(UIMModal.fade == `<uim-modal class="fade" aria-hidden="true" role="dialog" tabindex="-1"></uim-modal>`);	
	}

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Modal("<slot />");
		return super.toVueComponent		
		.name("UimModal")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Modal");
unittest {
	// assert(UIMModal == `<uim-modal></uim-modal>`);
}
