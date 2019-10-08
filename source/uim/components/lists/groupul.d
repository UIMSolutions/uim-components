module uim.components.lists.groupul;

import uim.components;

class DUIMListGroupUL : DUIMComponent {
	mixin(H5This!("UL", `["list-group"]`));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("item", "UIMListGroupItem"));
}
mixin(UIMShort!"ListGroupUL");

unittest {
	
	
	assert(Assert(UIMListGroupUL, `<ul class="list-group"></ul>`));
}