module uim.components.navbars.nav;

import uim.components;

class DUIMNavbarNav : DUIMComponent {
	mixin(H5This!("uim-navbar-nav"));
}
mixin(UIMShort!"NavbarNav");

unittest {
	assert(UIMNavbarNav == `<uim-navbar-nav></uim-navbar-nav>`);
}