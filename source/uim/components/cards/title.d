module uim.components.cards.title;

import uim.components;

class DUIMCardTitle : DUIMComponent {
	mixin(H5This!("uim-card-title"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardTitle("<slot />");
		return super.toVueComponent		
		.name("UimCardTitle")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CardTitle");

unittest {
	// assert(UIMCardTitle == `<uim-card-title></uim-card-title>`);
}
