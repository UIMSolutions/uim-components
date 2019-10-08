module uim.components.lists.group;

import uim.components;

class DUIMListGroup : DUIMComponent {
	mixin(H5This!("uim-list-group"));

	mixin(MyContent!("link", "UIMListGroupLink"));
	mixin(MyContent!("button", "UIMListGroupButton"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroup("<slot />");
		return super.toVUEComponent		
		.name("UimListGroup")
		;
	}
}
mixin(UIMShort!"ListGroup");

unittest {
	assert(Assert(UIMListGroup, `<uim-list-group></uim-list-group>`));
}