module uim.components.tabs.pane;

import uim.components;

class DUIMTabPane : DUIMComponent {
	mixin(H5This!("uim-tab-pane"));

	O active(this O)(bool value = true) { if (value) this.classes("active").attributes("aria-expanded", "true"); return cast(O)this; }
	unittest {
		assert(UIMTabPane.active == `<uim-tab-pane class="active" aria-expanded="true"></uim-tab-pane>`);
	}
	
	O fade(this O)(bool value = true) { if (value) this.classes("fade"); return cast(O)this; }
	unittest {
		assert(UIMTabPane.fade == `<uim-tab-pane class="fade"></uim-tab-pane>`);
	}

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS4TabPane("<slot />");
		return super.toVueComponent		
		.name("UimTabPane");
	}
}
mixin(UIMShort!"TabPane");

unittest {
	assert(UIMTabPane == `<uim-tab-pane></uim-tab-pane>`);
}