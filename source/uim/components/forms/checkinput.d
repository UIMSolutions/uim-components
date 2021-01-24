module uim.components.forms.checkinput;

import uim.components;

class DUIMFormCheckInput : DUIMComponent {
	mixin(H5This!("uim-form-check-input"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5FormCheckInput();
		return super.toVUEComponent		
		.name("uim-form-checkInput")
		;
	}
}
mixin(UIMShort!"FormCheckInput");

unittest {
	assert(Assert(UIMFormCheckInput, `<uim-form-check-input></uim-form-check-input>`));
}
