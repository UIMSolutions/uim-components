module uim.components.dropdowns.menu;

import uim.components;

class DUIMDropdownMenu : DUIMComponent {
	mixin(H5This!("uim-dropdown-menu"));

	mixin(MyAttribute!("label", "aria-labelledby"));
	mixin(MyContent!("header", "UIMDropdownHeader"));
	mixin(MyContent!("item", "UIMDropdownItem"));
}
mixin(UIMShort!"DropdownMenu");

unittest {
	assert(UIMDropdownMenu == `<uim-dropdown-menu></uim-dropdown-menu>`);
}
