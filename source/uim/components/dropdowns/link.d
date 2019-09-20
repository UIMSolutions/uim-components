module uim.components.dropdowns.link;

import uim.components;

class DUIMDropdownLink : DUIMComponent {
	mixin(H5This!("A", `["dropdown-item"]`));
	override public void init() {
		super.init;
	}	
}
mixin(UIMShort!"DropdownLink");

unittest {
	
}
