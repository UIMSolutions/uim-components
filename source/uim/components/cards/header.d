module uim.components.cards.header;

import uim.components;

class DUIMCardHeader : DUIMComponent {
	mixin(H5This!("uim-card-header"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardHeader("<slot />");
		return super.toVueComponent		
		.name("UimCardHeader")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CardHeader");

unittest {
	// assert(UIMCardHeader == `<uim-card-header></uim-card-header>`);
}
