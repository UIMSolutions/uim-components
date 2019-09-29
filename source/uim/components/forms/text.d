module uim.components.forms.text;

import uim.components;

class DUIMFormText : DUIMComponent {
	mixin(H5This!("uim-form-text"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4FormText();
		return super.toVueComponent		
		.name("UimFormText")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"FormText");

unittest {
	// assert(UIMFormText == `<uim-form-text></uim-form-text>`);
}