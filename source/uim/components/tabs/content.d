module uim.components.tabs.content;

import uim.components;

class DUIMTabContent : DUIMComponent {
	mixin(H5This!("uim-tab-content"));

	mixin(MyContent!("pane", "UIMTabPane"));
}
mixin(UIMShort!"TabContent");

unittest {
	assert(UIMTabContent == `<uim-tab-content></uim-tab-content>`);
}
