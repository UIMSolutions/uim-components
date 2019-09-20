module uim.components.forms.controls.input;

import uim.components; 

class DUIMInput : DH5Input {
	mixin(H5This!("Input", `["form-control"]`));	
}
mixin(UIMShort!("Input"));

unittest {
}