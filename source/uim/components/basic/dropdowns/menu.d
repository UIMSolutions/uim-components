﻿module uim.components.basic.dropdowns.menu;

import uim.components;

@safe:

class DUIMDropdownMenu : DUIMComponent {
	mixin(H5This!("uim-dropdown-menu"));

	override void initialize() {
		super.initialize;
	}

	mixin(MyAttribute!("label", "aria-labelledby"));
	mixin(MyContent!("header", "UIMMenu"));
	mixin(MyContent!("item", "UIMDropdownItem"));
	mixin(MyContent!("link", "UIMDropdownLink"));

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5DropdownMenu("<slot />");
		return super.toVUEComponent		
		.name("uim-dropdown-menu");
	} */
}
mixin(UIMShort!"DropdownMenu");

unittest {
	assert(Assert(UIMDropdownMenu, `<uim-dropdown-menu></uim-dropdown-menu>`));

	// auto f = File("./public/js/uim/components/basic/dropdowns/menu.js", "w"); 
  // f.write(UIMDropdownMenu.toVUEComponent.toString);
}
