module uim.components.forms.controls.time;

import uim.components; 

class DUIMInputTime : DUIMComponent {
	mixin(H5This!("uim-input-time"));	
}
mixin(UIMShort!("InputTime"));

unittest {
	assert(UIMInputTime == "<uim-input-time></uim-input-time>");	
}