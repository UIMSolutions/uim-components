﻿module uim.components.lists.links;

import uim.components;

class DUIMListLinks : DUIMComponent {
	mixin(H5This!("uim-list-links"));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("item", "UIMListGroupItem"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListLinks("<slot />");
		return super.toVUEComponent		
		.name("UimListLinks")
		;
	}
}
mixin(UIMShort!"ListLinks");

unittest {
	assert(Assert(UIMListLinks, `<uim-list-links></uim-list-links>`));
}