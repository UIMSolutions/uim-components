module uim.components.lists.inlineitem;

import uim.components;

class DUIMListInlineItem : DUIMComponent {
	mixin(H5This!("uim-list-inline-item"));
	override public void _init() {
		super._init;
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ListInlineItem("<slot />");
		return super.toVUEComponent		
		.name("uim-list-inline-item")
		;
	}
}
mixin(UIMShort!"ListInlineItem");

unittest {
	assert(Assert(UIMListInlineItem, `<uim-list-inline-item></uim-list-inline-item>`));
}