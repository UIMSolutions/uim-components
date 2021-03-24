module uim.components.basic.forms.inputgroups.group;

import uim.components;

@safe:

class DUIMInputGroup : DUIMComponent {
	mixin(H5This!("uim-inputgroup"));
	
	O size(this O)(string sizeName) { return this.classes("inputgroup-"~sizeName); }
	unittest {
		assert(Assert(UIMInputGroup.size("sm"), `<uim-inputgroup class="inputgroup-sm"></uim-inputgroup>`));
	}
}
mixin(UIMShort!"InputGroup");

unittest {
	assert(Assert(UIMInputGroup, `<uim-inputgroup></uim-inputgroup>`));
}
