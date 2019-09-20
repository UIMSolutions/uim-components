module uim.components.forms.controls.url;

import uim.components; 

class DUIMInputUrl : DUIMComponent {
	mixin(H5This!("uim-input-url"));	
}
mixin(UIMShort!("InputUrl"));

unittest {
	assert(UIMInputUrl == "<uim-input-url></uim-input-url>");	
}