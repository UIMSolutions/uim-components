module uim.components.cards.link;

import uim.components;

class DUIMCardLink : DUIMComponent {
	mixin(H5This!("uim-card-link"));

	override DVUEComponent toVUEComponent() {	
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardLink("<slot />");
		return super.toVUEComponent		
		.name("UimCardLink");
	}
}
mixin(UIMShort!"CardLink");

unittest {
	assert(Assert(UIMCardLink, `<uim-card-link></uim-card-link>`));
}
