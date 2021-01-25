module uim.components.basic.navs.list;

import uim.components;

class DUIMNavList : DUIMComponent {
	mixin(H5This!("uim-nav-list"));
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
mixin(UIMShort!"NavList");

unittest {
	assert(Assert(UIMNavList, `<uim-nav-list></uim-nav-list>`));

	auto f = File("./public/js/uim/components/basic/navs/list.js", "w"); 
  f.write(UIMNavList.toVUEComponent.toString);
}