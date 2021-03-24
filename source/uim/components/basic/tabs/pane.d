module uim.components.basic.tabs.pane;

import uim.components;

@safe:

class DUIMTabPane : DUIMComponent {
	mixin(H5This!("uim-tab-pane"));

	O active(this O)(bool value = true) { if (value) this.classes("active").attributes("aria-expanded", "true"); return cast(O)this; }
	unittest {
		assert(Assert(UIMTabPane.active, `<uim-tab-pane class="active" aria-expanded="true"></uim-tab-pane>`));
	}
	
	O fade(this O)(bool value = true) { if (value) this.classes("fade"); return cast(O)this; }
	unittest {
		assert(Assert(UIMTabPane.fade, `<uim-tab-pane class="fade"></uim-tab-pane>`));
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5TabPane("<slot />");
		return super.toVUEComponent		
		.name("uim-tab-pane");
	}
}
mixin(UIMShort!"TabPane");

unittest {
	assert(Assert(UIMTabPane, `<uim-tab-pane></uim-tab-pane>`));

	// auto f = File("./public/js/uim/components/basic/tabs/pane.js", "w"); 
  // f.write(UIMTabPane.toVUEComponent.toString);
}