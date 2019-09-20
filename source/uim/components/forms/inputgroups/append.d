module uim.components.forms.inputgroups.append;

import uim.components;

class DUIMInputGroupAppend : DUIMComponent {
	mixin(H5This!("uim-input-group-append"));

	mixin(MyContent!("text", "UIMInputGroupText"));
}
mixin(UIMShort!"InputGroupAppend");

unittest {
	assert(UIMInputGroupAppend == `<uim-input-group-append></uim-input-group-append>`);
}