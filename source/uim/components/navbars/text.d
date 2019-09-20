module uim.components.navbars.text;

import uim.components;

class DUIMNavbarText : DUIMComponent {
	mixin(H5This!("uim-navbar-text"));
}
mixin(UIMShort!"NavbarText");

unittest {
	assert(UIMNavbarText == `<uim-navbar-text></uim-navbar-text>`);
}