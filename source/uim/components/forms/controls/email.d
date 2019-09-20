module uim.components.forms.controls.email;

import uim.components; 

class DUIMInputEmail : DUIMComponent {
	mixin(H5This!("uim-input-email"));	
}
mixin(UIMShort!("InputEmail"));

unittest {
	assert(UIMInputEmail == "<uim-input-email></uim-input-email>");	
}