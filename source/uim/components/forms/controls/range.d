module uim.components.forms.controls.range;

import uim.components; 

class DUIMInputRange : DUIMComponent {
	mixin(H5This!("uim-input-range"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputRange();
		return super.toVUEComponent		
		.name("UimInputRange");
	}	
}
mixin(UIMShort!("InputRange"));

unittest {
	assert(Assert(UIMInputRange, "<uim-input-range></uim-input-range>"));	
}