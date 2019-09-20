module uim.components.forms.controls.range;

import uim.components; 

class DUIMInputRange : DH5Input {
	mixin(H5This!("uim-input-range"));	
}
mixin(UIMShort!("InputRange"));

unittest {
	assert(UIMInputRange == "<uim-input-range></uim-input-range>");	
}