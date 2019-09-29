module uim.components.layout.container;

import uim.components;

class DUIMContainer : DUIMComponent {
	mixin(H5This!("uim-container"));

	mixin(MyContent!("row", "UIMRow"));
	unittest {
		assert(UIMContainer.row == `<uim-container><uim-row></uim-row></uim-container>`);
	}

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Container("<slot />");
		return super.toVueComponent		
		.name("UimContainer")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Container");

unittest {
	assert(UIMContainer == `<uim-container></uim-container>`);
}