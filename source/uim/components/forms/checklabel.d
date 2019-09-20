module uim.components.forms.checklabel;

import uim.components;

class DUIMFormCheckLabel : DUIMComponent {
	mixin(H5This!("uim-form-check-label"));
}
mixin(UIMShort!"FormCheckLabel");

unittest {
	assert(UIMFormCheckLabel == `<uim-form-check-label></uim-form-check-label>`);
}