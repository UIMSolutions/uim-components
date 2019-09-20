module uim.components.forms.controls.tel;

import uim.components; 

class DUIMInputTelephone : DUIMComponent {
	mixin(H5This!("uim-input-tel"));	
}
mixin(UIMShort!("InputTelephone"));

unittest {
	assert(UIMInputTel == "<uim-input-tel></uim-input-tel>");	
}