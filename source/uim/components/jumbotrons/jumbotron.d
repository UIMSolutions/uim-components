module uim.components.jumbotrons.jumbotron;

import uim.components;

class DUIMJumbotron : DUIMComponent {
	mixin(H5This!("uim-jumbotron"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Jumbotron("<slot />");
		return super.toVUEComponent		
		.name("UimJumbotron");
	}
}
mixin(UIMShort!"Jumbotron");

unittest {
	assert(Assert(UIMJumbotron, `<uim-jumbotron></uim-jumbotron>`));
}