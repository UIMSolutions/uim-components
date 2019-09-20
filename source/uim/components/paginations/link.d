module uim.components.paginations.link;

import uim.components;

class DUIMPageLink : DUIMComponent {
	mixin(H5This!("uim-page-link"));
	override public void init() {
		super.init;
	}
}
mixin(UIMShort!"PageLink");

unittest {
	assert(UIMPageLink == `<uim-page-link></uim-page-link>`);
}