module uim.components.dropdowns.togglelink;

import uim.components;

class DUIMTogglelink : DUIMComponent {
	mixin(H5This!("A", `["btn", "dropdown-toggle"]`, `["aria-haspopup":"true", "aria-expanded":"false"]`));
	override public void init() {
		super.init;
	}	
	unittest {
		assert(UIMTogglelink == `<a class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`);
		assert(UIMTogglelink.id("id") == `<a id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`);
	}
}
mixin(UIMShort!"Togglelink");

unittest {
}

