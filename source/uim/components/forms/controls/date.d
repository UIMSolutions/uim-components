module uim.components.forms.controls.date;

import uim.components; 

class DUIMInputDate : DUIMComponent {
	mixin(H5This!("uim-input-date"));	
}
mixin(UIMShort!("InputDate"));

unittest {
	assert(UIMInputDate == "<uim-input-date></uim-input-date>");	
}