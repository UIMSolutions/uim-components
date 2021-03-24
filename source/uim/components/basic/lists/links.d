module uim.components.basic.lists.links;

import uim.components;

@safe:

class DUIMListLinks : DUIMComponent {
	mixin(H5This!("uim-list-links"));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("item", "UIMListItem"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ListLinks("<slot />");
		return super.toVUEComponent		
		.name("uim-list-links")
		;
	}
}
mixin(UIMShort!"ListLinks");

unittest {
	assert(Assert(UIMListLinks, `<uim-list-links></uim-list-links>`));

	// auto f = File("./public/js/uim/components/basic/lists/links.js", "w"); 
  // f.write(UIMListLinks.toVUEComponent.toString);
}