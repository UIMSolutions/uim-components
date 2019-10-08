module uim.components.forms.inputgroups.text;

import uim.components;

class DUIMInputGroupText : DUIMComponent {
	mixin(H5This!("uim-input-group-text"));
}
mixin(UIMShort!"InputGroupText");

unittest {
	assert(Assert(UIMInputGroupText, `<uim-input-group-text></uim-input-group-text>`));
}