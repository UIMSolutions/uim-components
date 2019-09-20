module uim.components.navs.nav;

import uim.components;

class DUIMNav : DUIMComponent {
	mixin(H5This!("uim-nav"));

	mixin(MyContent!("link", "UIMNavLink"));
}
mixin(UIMShort!"Nav");

unittest {
	assert(UIMNav == `<uim-nav></uim-nav>`);
}