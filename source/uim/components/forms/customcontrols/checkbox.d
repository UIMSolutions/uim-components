module uim.components.forms.customcontrols.checkbox;

import uim.components;

class DUIMCustomCheckbox : DUIMComponent {
	mixin(H5This!("uim-custom-checkbox"));
}
mixin(UIMShort!"CustomCheckbox");

unittest {
	assert(UIMInputTel == "<uim-custom-checkbox></uim-custom-checkbox>");	
}