module uim.components.basic.tabs.content;

import uim.components;

class DUIMTabContent : DUIMComponent {
	mixin(H5This!("uim-tab-content"));

	mixin(MyContent!("pane", "UIMTabPane"));
	unittest {
		assert(Assert(UIMTabContent.pane, `<uim-tab-content><uim-tab-pane></uim-tab-pane></uim-tab-content>`));
	}
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5TabContent("<slot />");
		return super.toVUEComponent		
		.name("uim-tab-content");
	}
}
mixin(UIMShort!"TabContent");

unittest {
	assert(Assert(UIMTabContent, `<uim-tab-content></uim-tab-content>`));
}
