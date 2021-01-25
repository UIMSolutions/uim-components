module uim.components.basic.lists.inline;

import uim.components;

class DUIMListInline : DUIMComponent {
	mixin(H5This!("uim-list-inline"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ListInline("<slot />");
		return super.toVUEComponent		
		.name("uim-list-inline");
	}
}
mixin(UIMShort!"ListInline");

unittest {
	assert(Assert(UIMListInline, `<uim-list-inline></uim-list-inline>`));

	auto f = File("./public/js/uim/components/basic/lists/inline.js", "w"); // open for writing
  f.write(UIMListInline.toVUEComponent.toString);
}