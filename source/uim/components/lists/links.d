module uim.components.lists.links;

import uim.components;

class DUIMListLinks : DUIMComponent {
	mixin(H5This!("uim-list-links"));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("item", "UIMListGroupItem"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListLinks("<slot />");
		return super.toVueComponent		
		.name("UimListLinks")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ListLinks");

unittest {
	// assert(UIMListLinks == `<ul class="list-group"></ul>`);
}