module uim.components.forms.controls.checkbox;

import uim.components; 

class DUIMInputCheckbox : DUIMComponent {
	mixin(H5This!("uim-input-checkbox"));	
}
mixin(UIMShort!("InputCheckbox"));

unittest {
	assert(UIMInputCheckBox == "<uim-input-checkbox></uim-input-checkbox>");	
}