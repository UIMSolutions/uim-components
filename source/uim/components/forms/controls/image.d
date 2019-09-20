module uim.components.forms.controls.image;

import uim.components; 

class DUIMInputImage : DUIMComponent {
	mixin(H5This!("uim-input-hidden"));	
}
mixin(UIMShort!("InputImage"));

unittest {
	assert(UIMInputHidden == "<uim-input-hidden></uim-input-hidden>");	
}