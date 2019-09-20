module uim.components.forms.controls.reset;

import uim.components; 

class DUIMInputReset : DUIMComponent {
	mixin(H5This!("uim-input-reset"));	
}
mixin(UIMShort!("InputReset"));

unittest {
	assert(UIMInputReset == "<uim-input-reset></uim-input-reset>");	
}