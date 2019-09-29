module uim.components.forms.checklabel;

import uim.components;

class DUIMFormCheckLabel : DUIMComponent {
	mixin(H5This!("uim-form-check-label"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4FormCheckLabel("<slot />");
		return super.toVueComponent		
		.name("UimFormCheckLabel")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"FormCheckLabel");

unittest {
	// assert(UIMFormCheckLabel == `<uim-form-check-label></uim-form-check-label>`);
}