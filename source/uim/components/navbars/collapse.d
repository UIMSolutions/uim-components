module uim.components.navbars.collapse;

import uim.components;

class DUIMNavbarCollapse : DUIMComponent {
	mixin(H5This!("uim-navbar-collapse"));
}
mixin(UIMShort!"NavbarCollapse");

unittest {
	assert(UIMNavbarCollapse == `<uim-navbar-collapse></uim-navbar-collapse>`);
}