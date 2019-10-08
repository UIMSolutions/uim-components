module uim.components.lists.item;

import uim.components;

class DUIMListGroupItem : DUIMComponent {
	mixin(H5This!("uim-list-group-item"));
	override public void _init() {
		super._init;
	}
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroupItem("<slot />");
		return super.toVUEComponent		
		.name("UimListGroupItem")
		;
	}
}
mixin(UIMShort!"ListGroupItem");

unittest {
	assert(Assert(UIMListGroupItem, `<uim-list-group-item></uim-list-group-item>`));
}