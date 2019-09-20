module uim.components.forms.controls.number;

import uim.components; 

class DUIMInputNumber : DUIMComponent {
	mixin(H5This!("uim-input-number"));	
}
mixin(UIMShort!("InputNumber"));

unittest {
	assert(UIMInputNumber == "<uim-input-number></uim-input-number>");		
}