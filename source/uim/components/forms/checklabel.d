module uim.components.forms.checklabel;

import uim.components;

class DUIMFormCheckLabel : DUIMComponent {
	mixin(H5This!("uim-form-check-label"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4FormCheckLabel("<slot />");
		return super.toVUEComponent		
		.name("UimFormCheckLabel")
		;
	}
}
mixin(UIMShort!"FormCheckLabel");

unittest {
	assert(Assert(UIMFormCheckLabel, `<uim-form-check-label></uim-form-check-label>`));
}