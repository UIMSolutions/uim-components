module uim.components.forms.controls.text;

import uim.components; 

class DUIMInputText : DUIMComponent {
	mixin(H5This!("uim-input-text"));	
}
mixin(UIMShort!("InputText"));

unittest {
	assert(UIMInputText == "<uim-input-text></uim-input-text>");	
}