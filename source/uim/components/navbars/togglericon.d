module uim.components.navbars.togglericon;

import uim.components;

class DUIMNavbarTogglerIcon : DUIMComponent {
	mixin(H5This!("SPAN", `["navbar-toggler-icon"]`));
}
mixin(UIMShort!"NavbarTogglerIcon");

unittest {
	assert(UIMNavbarTogglerIcon == `<uim-navbar-toggler-icon></uim-navbar-toggler-icon>`);
}