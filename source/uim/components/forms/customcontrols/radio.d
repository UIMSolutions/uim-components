module uim.components.forms.customcontrols.radio;

import uim.components;

class DUIMCustomRadio : DUIMComponent {
	mixin(H5This!("uim-custom-radio"));
}
mixin(UIMShort!"CustomRadio");

unittest {
	assert(UIMCustomRadio == "<uim-custom-radio></uim-custom-radio>");	
}