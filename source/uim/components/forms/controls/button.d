module uim.components.forms.controls.button;

import uim.components; 

class DUIMInputButton : DUIMComponent {
	mixin(H5This!("uim-input-button"));	
}
mixin(UIMShort!("InputButton"));

unittest {
	assert(UIMInputButton == "<uim-input-button></uim-input-button>")	
}