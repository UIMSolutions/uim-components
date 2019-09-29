module uim.components.forms.inputgroups.group;

import uim.components;

class DUIMInputGroup : DUIMComponent {
	mixin(H5This!("uim-input-group"));
	
	O size(this O)(string sizeName) { return this.classes("input-group-"~sizeName); }
	unittest {
		// assert(UIMInputGroup.size("sm") == `<div class="input-group input-group-sm"></div>`);
	}
}
mixin(UIMShort!"InputGroup");

unittest {
	// assert(UIMInputGroup == `<uim-input-group></uim-input-group>`);
}
