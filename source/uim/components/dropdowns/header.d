module uim.components.dropdowns.header;

import uim.components;

class DUIMDropdownHeader : DUIMComponent {
	mixin(H5This!("H6", `["dropdown-header"]`));
	override public void init() {
		super.init;
	}	
}
mixin(UIMShort!"DropdownHeader");

unittest {
	
	
	assert(UIMDropdownHeader == `<h6 class="dropdown-header"></h6>`);
}
