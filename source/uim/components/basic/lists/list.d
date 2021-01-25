module uim.components.basic.lists.list;

import uim.components;

class DUIMList : DUIMComponent {
	mixin(H5This!("uim-list"));

	mixin(MyContent!("link", "UIMListLink"));
	mixin(MyContent!("button", "UIMListButton"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5List("<slot />");
		return super.toVUEComponent		
		.name("uim-list")
		;
	}
}
mixin(UIMShort!"List");

unittest {
	assert(Assert(UIMList, `<uim-list></uim-list>`));
}