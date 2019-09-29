module uim.components.forms.checkinput;

import uim.components;

class DUIMFormCheckInput : DUIMComponent {
	mixin(H5This!("uim-form-check-input"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4FormCheckInput();
		return super.toVueComponent		
		.name("UimFormCheckInput")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"FormCheckInput");

unittest {
	// assert(UIMFormCheckInput == `<uim-form-check-input></uim-form-check-input>`);
}
