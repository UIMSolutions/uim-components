module uim.components.paginations.item;

import uim.components;

class DUIMPageItem : DUIMComponent {
	mixin(H5This!("uim-page-item"));
	override public void init() {
		super.init;
	}
	mixin(MyContent!("link", "UIMPageLink"));

	O active(this O)(bool value = true) { _classes.add("active"); return cast(O)this; }
	O disabled(this O)(bool value = true) { _classes.add("disabled"); _attributes["tabindex"] = "-1"; return cast(O)this; }
}
mixin(UIMShort!"PageItem");

unittest {
	assert(UIMPageItem == `<uim-page-item></uim-page-item>`);
	assert(UIMPageItem.active == `<uim-page-item class="active page-item"></uim-page-item>`);
	assert(UIMPageItem.disabled == `<uim-page-item class="disabled page-item" tabindex="-1"></uim-page-item>`);
}