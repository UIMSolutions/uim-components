module uim.components.basic.jumbotrons.jumbotron;

import uim.components;

class DUIMJumbotron : DUIMComponent {
	mixin(H5This!("uim-jumbotron"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Jumbotron("<slot />");
		return super.toVUEComponent		
		.name("uim-jumbotron");
	}
}
mixin(UIMShort!"Jumbotron");

unittest {
	assert(Assert(UIMJumbotron, `<uim-jumbotron></uim-jumbotron>`));
}