module uim.components.forms.controls.radio;

import uim.components; 

class DUIMInputRadio : DUIMComponent {
	mixin(H5This!("uim-input-radio"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputRadio();
		return super.toVUEComponent		
		.name("UimInputRadio")
		;
	}	
}
mixin(UIMShort!("InputRadio"));

unittest {
	assert(Assert(UIMInputRadio, "<uim-input-radio></uim-input-radio>"));	
}