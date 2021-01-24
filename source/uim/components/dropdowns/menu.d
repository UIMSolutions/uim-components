﻿module uim.components.dropdowns.menu;

import uim.components;

class DUIMDropdownMenu : DUIMComponent {
	mixin(H5This!("uim-dropdown-menu"));

	mixin(MyAttribute!("label", "aria-labelledby"));
	mixin(MyContent!("header", "UIMMenu"));
	mixin(MyContent!("item", "UIMDropdownItem"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5DropdownMenu("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-menu");
	}
}
mixin(UIMShort!"DropdownMenu");

unittest {
	assert(Assert(UIMDropdownMenu, `<uim-dropdown-menu></uim-dropdown-menu>`));
}
