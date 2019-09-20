module uim.components.forms.text;

import uim.components;

class DUIMFormText : DUIMComponent {
	mixin(H5This!("uim-form-text"));
}
mixin(UIMShort!"FormText");

unittest {
	assert(UIMFormText == `<uim-form-text></uim-form-text>`);
}