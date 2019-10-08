module uim.components.forms.customcontrols.input;

import uim.components;

class DUIMCustomInput : DUIMComponent {
	mixin(H5This!("uim-custom-input"));
}
mixin(UIMShort!"CustomInput");

unittest {
	assert(Assert(UIMCustomInput, "<uim-custom-input></uim-custom-input>"));	
}
