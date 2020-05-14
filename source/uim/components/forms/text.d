module uim.components.forms.text;

import uim.components;

class DUIMFormText : DUIMComponent {
	mixin(H5This!("uim-form-text"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4FormText();
		return super.toVUEComponent		
		.name("uim-form-text")
		;
	}
}
mixin(UIMShort!"FormText");

unittest {
	assert(Assert(UIMFormText, `<uim-form-text></uim-form-text>`));
}