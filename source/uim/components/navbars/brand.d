module uim.components.navbars.brand;

import uim.components;

class DUIMNavbarBrand : DUIMComponent {
	mixin(H5This!("uim-navbar-brand"));

	mixin(MyContent!("image", "H5IMG"));
}
mixin(UIMShort!"NavbarBrand");

unittest {
	assert(UIMNavbarBrand == `<uim-navbar-brand></uim-navbar-brand>`);
}