module uim.components.tabs.list;

import uim.components;

class DUIMTabList : DUIMComponent {
	mixin(H5This!("uim-tab-list"));
	override public void _init() {
		super._init;
	}

	mixin(MyContent!("item", "UIMNavItem"));

	O vertical(this O)(bool mode = true) { return this.classes("flex-column"); }
	O tabs(this O)(bool mode = true) { return this.classes("nav-tabs"); }
	O pills(this O)(bool mode = true) { return this.classes("nav-pills"); }
	O fill(this O)(bool mode = true) { return this.classes("nav-fill"); }
	O justified(this O)(bool mode = true) { return this.classes("nav-justified"); }
}
mixin(UIMShort!"TabList");

unittest {
	// assert(UIMTabList == `<uim-tab-list></uim-tab-list>`);
}