module uim.components.lists.groupul;

import uim.components;

class DUIMListGroupUL : DUIMComponent {
	mixin(H5This!("UL", `["list-group"]`));
	override public void init() {
		super.init;
	}
	mixin(MyContent!("item", "UIMListGroupItem"));
}
mixin(UIMShort!"ListGroupUL");

unittest {
	
	
	assert(UIMListGroupUL == `<ul class="list-group"></ul>`);
}