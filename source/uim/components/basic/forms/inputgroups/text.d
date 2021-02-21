module uim.components.basic.forms.inputgroups.text;

import uim.components;

class DUIMInputGroupText : DUIMComponent {
	mixin(H5This!("uim-inputgroup-text"));
}
mixin(UIMShort!"InputGroupText");

unittest {
	assert(Assert(UIMInputGroupText, `<uim-inputgroup-text></uim-inputgroup-text>`));
}