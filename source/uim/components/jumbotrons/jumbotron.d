module uim.components.jumbotrons.jumbotron;

import uim.components;

class DUIMJumbotron : DUIMComponent {
	mixin(H5This!("uim-jumbotron"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Jumbotron("<slot />");
		return super.toVueComponent		
		.name("UimJumbotron")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Jumbotron");

unittest {
	// assert(UIMJumbotron == `<uim-jumbotron></uim-jumbotron>`);
}