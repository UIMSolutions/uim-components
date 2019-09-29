module uim.components.lists.group;

import uim.components;

class DUIMListGroup : DUIMComponent {
	mixin(H5This!("uim-list-group"));

	mixin(MyContent!("link", "UIMListGroupLink"));
	mixin(MyContent!("button", "UIMListGroupButton"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4ListGroup("<slot />");
		return super.toVueComponent		
		.name("UimListGroup")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"ListGroup");

unittest {
	// assert(UIMListGroup == `<uim-list-group></uim-list-group>`);
}