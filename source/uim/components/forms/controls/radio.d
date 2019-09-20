module uim.components.forms.controls.radio;

import uim.components; 

class DUIMInputRadio : DUIMComponent {
	mixin(H5This!("uim-input-radio"));	
}
mixin(UIMShort!("InputRadio"));

unittest {
	assert(UIMInputRadio == "<uim-input-radio></uim-input-radio>");	
}