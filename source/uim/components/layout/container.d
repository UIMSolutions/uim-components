module uim.components.layout.container;

import uim.components;

class DUIMContainer : DUIMComponent {
	mixin(H5This!("uim-container"));

	mixin(MyContent!("row", "UIMRow"));
	unittest {
		assert(Assert(UIMContainer.row, `<uim-container><uim-row></uim-row></uim-container>`));
	}

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Container("<slot />");
		return super.toVUEComponent		
		.name("uim-container");
	}
}
mixin(UIMShort!"Container");

unittest {
	assert(Assert(UIMContainer, `<uim-container></uim-container>`));
}