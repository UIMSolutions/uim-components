module uim.components.cards.text;

import uim.components;

class DUIMCardText : DUIMComponent {
	mixin(H5This!("uim-card-text"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardText("<slot />");
		return super.toVueComponent		
		.name("UimCardText")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CardText");
unittest {
	// assert(UIMCardText == `<uim-card-text></uim-card-text>`);
}
