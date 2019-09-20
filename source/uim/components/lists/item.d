module uim.components.lists.item;

import uim.components;

class DUIMListGroupItem : DUIMComponent {
	mixin(H5This!("LI", `["list-group-item"]`));
	override public void init() {
		super.init;
	}
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(UIMShort!"ListGroupItem");

unittest {
	
	
	assert(UIMListGroupItem == `<li class="list-group-item"></li>`);
}