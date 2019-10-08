module uim.components.cards.text;

import uim.components;

class DUIMCardText : DUIMComponent {
	mixin(H5This!("uim-card-text"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS4CardText("<slot />");
		return super.toVUEComponent		
		.name("UimCardText");
	}
}
mixin(UIMShort!"CardText");
unittest {
	assert(Assert(UIMCardText, `<uim-card-text></uim-card-text>`));
}
