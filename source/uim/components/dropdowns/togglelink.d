module uim.components.dropdowns.togglelink;

import uim.components;

class DUIMTogglelink : DUIMComponent {
	mixin(H5This!("uim-dropdown-toggle-link"));

	unittest {
		assert(Assert(UIMTogglelink, `<uim-dropdown-toggle-link></uim-dropdown-toggle-link>`));
		assert(Assert(UIMTogglelink.id("id"), `<uim-dropdown-toggle-link id="id"></uim-dropdown-toggle-link>`));
	}
}
mixin(UIMShort!"Togglelink");

unittest {
}

