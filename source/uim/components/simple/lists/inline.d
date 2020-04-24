module uim.components.lists.inline;

import uim.components;

class DUIMListInline : DUIMComponent {
	mixin(H5This!("uim-list-inline"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListInline("<slot />");
		return super.toVUEComponent		
		.name("uim-list-inline");
	}
}
mixin(UIMShort!"ListInline");

unittest {
	assert(Assert(UIMListInline, `<uim-list-inline></uim-list-inline>`));
}