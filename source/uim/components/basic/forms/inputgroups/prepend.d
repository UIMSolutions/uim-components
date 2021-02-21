module uim.components.basic.forms.inputgroups.prepend;

import uim.components;

class DUIMInputGroupPrepend : DUIMComponent {
	mixin(H5This!("uim-inputgroup-prepend"));

	mixin(MyContent!("text", "UIMInputGroupText"));
}
mixin(UIMShort!"InputGroupPrepend");

unittest {
	assert(Assert(UIMInputGroupPrepend, `<uim-inputgroup-prepend></uim-inputgroup-prepend>`));
}