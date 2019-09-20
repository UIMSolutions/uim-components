module uim.components.forms.controls.hidden;

import uim.components; 

class DUIMInputHidden : DUIMComponent {
	mixin(H5This!("uim-input-hidden"));	
}
mixin(UIMShort!("InputHidden"));

unittest {
	assert(UIMInputHidden == "<uim-input-hidden></uim-input-hidden>");	
}