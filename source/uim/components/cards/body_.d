module uim.components.cards.body_;

import uim.components;

class DUIMCardBody : DUIMComponent {
	mixin(H5This!("uim-card-body"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardBody("<slot />");
		return super.toVueComponent		
		.name("UimCardBody")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CardBody");
unittest {
	// assert(UIMCardBody == `<uim-card-body></uim-card-body>`);
}