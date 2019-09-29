module uim.components.forms.controls.range;

import uim.components; 

class DUIMInputRange : DUIMComponent {
	mixin(H5This!("uim-input-range"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputRange();
		return super.toVueComponent		
		.name("UimInputRange")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputRange"));

unittest {
	// assert(UIMInputRange == "<uim-input-range></uim-input-range>");	
}