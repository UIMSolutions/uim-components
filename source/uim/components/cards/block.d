module uim.components.cards.block;

import uim.components;

class DUIMCardBlock : DUIMComponent {
	mixin(H5This!("uim-card-block"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj =  BS4CardBlock("<slot />");
		return super.toVueComponent		
		.name("UimCardBlock")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CardBlock");
unittest {
	// assert(UIMCardBlock == `<uim-card-block></uim-card-block>`);
}
