module uim.components.forms.checkinput;

import uim.components;

class DUIMFormCheckInput : DUIMComponent {
	mixin(H5This!("uim-form-check-input"));
}
mixin(UIMShort!"FormCheckInput");

unittest {
	assert(UIMFormCheckInput == `<uim-form-check-input></uim-form-check-input>`);
}
