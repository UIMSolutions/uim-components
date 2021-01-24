module uim.components.forms.controls.number;

import uim.components; 

class DUIMInputNumber : DUIMComponent {
	mixin(H5This!("uim-input-number"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputButton();
		return super.toVUEComponent		
		.name("uim-input-number")
		;
	}
}
mixin(UIMShort!("InputNumber"));

unittest {
	assert(Assert(UIMInputNumber, "<uim-input-number></uim-input-number>"));		
}