﻿module uim.components.basic.navs.item;

import uim.components;

@safe:

class DUIMNavItem : DUIMComponent {
	mixin(H5This!("uim-nav-item"));

	override void initialize() {
		super.initialize;
	}

	O dropdown(this O)(bool mode = true) { return this.classes("dropdown"); }
	mixin(MyContent!("link", "UIMNavLink"));

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5NavItem("<slot />");
		return super.toVUEComponent		
		.name("uim-nav-item")
		;
	} */
}
mixin(UIMShort!"NavItem");

unittest {
	assert(Assert(UIMNavItem, `<uim-nav-item></uim-nav-item>`));

	// auto f = File("./public/js/uim/components/basic/navs/item.js", "w"); 
  // f.write(UIMNavItem.toVUEComponent.toString);
}