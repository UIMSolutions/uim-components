module uim.components.forms.controls.color;

import uim.components; 

class DUIMInputColor : DUIMComponent {
	mixin(H5This!("uim-input-color"));	
}
mixin(UIMShort!("InputColor"));

unittest {
	assert(UIMInputColor == "<uim-input-color></uim-input-color>");
}