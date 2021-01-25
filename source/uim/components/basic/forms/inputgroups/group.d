module uim.components.basic.forms.inputgroups.group;

import uim.components;

class DUIMInputGroup : DUIMComponent {
	mixin(H5This!("uim-input-group"));
	
	O size(this O)(string sizeName) { return this.classes("input-group-"~sizeName); }
	unittest {
		assert(Assert(UIMInputGroup.size("sm"), `<uim-input-group class="input-group-sm"></uim-input-group>`));
	}
}
mixin(UIMShort!"InputGroup");

unittest {
	assert(Assert(UIMInputGroup, `<uim-input-group></uim-input-group>`));
}
