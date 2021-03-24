module uim.components.basic.forms.customcontrols.input;

import uim.components;

@safe:

class DUIMCustomInput : DUIMComponent {
	mixin(H5This!("uim-custom-input"));
}
mixin(UIMShort!"CustomInput");

unittest {
	assert(Assert(UIMCustomInput, "<uim-custom-input></uim-custom-input>"));	
}
