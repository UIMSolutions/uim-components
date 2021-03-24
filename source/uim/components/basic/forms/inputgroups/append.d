module uim.components.basic.forms.inputgroups.append;

import uim.components;

@safe:

class DUIMInputGroupAppend : DUIMComponent {
	mixin(H5This!("uim-inputgroup-append"));

	mixin(MyContent!("text", "UIMInputGroupText"));
}
mixin(UIMShort!"InputGroupAppend");

unittest {
	assert(Assert(UIMInputGroupAppend, `<uim-inputgroup-append></uim-inputgroup-append>`));
}