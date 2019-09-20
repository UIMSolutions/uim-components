module uim.components.forms.controls.datetime;

import uim.components; 

class DUIMInputDateTime : DUIMComponent {
	mixin(H5This!("uim-input-datetime"));	
}
mixin(UIMShort!("InputDateTime"));

unittest {
	assert(UIMInputDateTime == "<uim-input-datetime></uim-input-datetime>");	
}