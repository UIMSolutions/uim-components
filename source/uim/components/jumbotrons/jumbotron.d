module uim.components.jumbotrons;

import uim.components;

class DUIMJumbotron : DUIMComponent {
	mixin(H5This!("uim-jumbotron"));
}
mixin(UIMShort!"Jumbotron");

unittest {
	assert(UIMJumbotron == `<uim-jumbotron></uim-jumbotron>`);
}