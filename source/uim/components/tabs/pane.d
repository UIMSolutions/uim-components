module uim.components.tabs.pane;

import uim.components;

class DUIMTabPane : DUIMComponent {
	mixin(H5This!("uim-tab-pane"));

	O active(this O)(bool value = true) { _classes.add("active"); _attributes["aria-expanded"] = "true"; return cast(O)this; }
	unittest {
		assert(UIMTabPane.active == `<div class="active tab-pane" aria-expanded="true" role="tabpanel"></div>`);
	}
	
	O fade(this O)(bool value = true) { _classes.add("fade"); return cast(O)this; }
	unittest {
		assert(UIMTabPane.fade == `<div class="fade tab-pane" aria-expanded="false" role="tabpanel"></div>`);
	}
}
mixin(UIMShort!"TabPane");

unittest {
	assert(UIMTabPane == `<uim-tab-pane></uim-tab-pane>`);
}