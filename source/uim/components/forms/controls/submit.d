module uim.components.forms.controls.submit;

import uim.components; 

class DUIMInputSubmit : DUIMComponent {
	mixin(H5This!("uim-input-submit"));	
}
mixin(UIMShort!("InputSubmit"));

unittest {
	assert(UIMInputSubmit == "<uim-input-submit></uim-input-submit>");	
}