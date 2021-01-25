module uim.components.basic.forms.inputgroups.prepend;

import uim.components;

class DUIMInputGroupPrepend : DUIMComponent {
	mixin(H5This!("uim-input-group-prepend"));

	mixin(MyContent!("text", "UIMInputGroupText"));
}
mixin(UIMShort!"InputGroupPrepend");

unittest {
	assert(Assert(UIMInputGroupPrepend, `<uim-input-group-prepend></uim-input-group-prepend>`));
}