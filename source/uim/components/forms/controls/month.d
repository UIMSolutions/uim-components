module uim.components.forms.controls.month;

import uim.components; 

class DUIMInputMonth : DUIMComponent {
	mixin(H5This!("uim-input-month"));	
}
mixin(UIMShort!("InputMonth"));

unittest {
	assert(UIMInputMonth == "<uim-input-month></uim-input-month>");	
}