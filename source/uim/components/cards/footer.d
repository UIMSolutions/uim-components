module uim.components.cards.footer;

import uim.components;

class DUIMCardFooter : DUIMComponent {
	mixin(H5This!("uim-card-footer"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardFooter("<slot />");
		return super.toVueComponent		
		.name("UimCardFooter")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CardFooter");
unittest {
	// assert(UIMCardFooter == `<uim-card-footer></uim-card-footer>`);
}
