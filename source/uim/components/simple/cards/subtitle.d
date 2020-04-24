module uim.components.cards.subtitle;

import uim.components;

class DUIMCardSubtitle : DUIMComponent {
	mixin(H5This!("uim-card-subtitle"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardSubtitle("<slot />");
		return super.toVUEComponent		
		.name("uim-card-subtitle");
	}
}
mixin(UIMShort!"CardSubtitle");

unittest {
	assert(Assert(UIMCardSubtitle, `<uim-card-subtitle></uim-card-subtitle>`));
}
