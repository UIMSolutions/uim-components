module uim.components.dropdowns.divider;

import uim.components;

class DUIMDropdownDivider : DUIMComponent {
	mixin(H5This!("DIV", `["dropdown-divider"]`));
	override public void init() {
		super.init;
	}	
}
mixin(UIMShort!"DropdownDivider");

unittest {
	
	
	assert(UIMDropdownDivider == `<div class="dropdown-divider"></div>`);
}
