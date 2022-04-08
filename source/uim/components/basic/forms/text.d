module uim.components.basic.forms.text;

import uim.components;

@safe:

class DUIMFormText : DUIMComponent {
	mixin(H5This!("uim-form-text"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5FormText();
		return super.toVUEComponent		
		.name("uim-form-text")
		;
	} */
}
mixin(UIMShort!"FormText");

unittest {
	assert(Assert(UIMFormText, `<uim-form-text></uim-form-text>`));
}