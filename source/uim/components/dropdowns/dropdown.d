module uim.components.dropdowns.dropdown;

import uim.components;

class DUIMDropdown : DUIMComponent {
	mixin(H5This!("DIV", `["dropdown"]`));
	override public void init() {
		super.init;
	}	
	mixin(MyContent!("menu", "UIMDropdownMenu"));
	mixin(MyContent!("toggleLink", "UIMToggleLink"));
}
mixin(UIMShort!"Dropdown");

unittest {
	
	
	assert(UIMDropdown == `<div class="dropdown"></div>`);
	assert(UIMDropdown.id("id") == `<div id="id" class="dropdown"></div>`);

}
