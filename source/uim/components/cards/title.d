module uim.components.cards.title;

import uim.components;

class DUIMCardTitle : DUIMComponent {
	mixin(H5This!("uim-card-title"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardTitle("<slot />");
		return super.toVUEComponent		
		.name("UimCardTitle");
	}
}
mixin(UIMShort!"CardTitle");

unittest {
	assert(Assert(UIMCardTitle, `<uim-card-title></uim-card-title>`));
}
