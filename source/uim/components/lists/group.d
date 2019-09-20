module uim.components.lists.group;

import uim.components;

class DUIMListGroup : DUIMComponent {
	mixin(H5This!("uim-list-group"));

	mixin(MyContent!("link", "UIMListGroupLink"));
	mixin(MyContent!("button", "UIMListGroupButton"));
}
mixin(UIMShort!"ListGroup");

unittest {
	assert(UIMListGroup == `<uim-list-group></uim-list-group>`);
}