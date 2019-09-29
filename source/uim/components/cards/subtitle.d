module uim.components.cards.subtitle;

import uim.components;

class DUIMCardSubtitle : DUIMComponent {
	mixin(H5This!("uim-card-subtitle"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		_templateObj =  BS4CardSubtitle("<slot />");
		return super.toVueComponent		
		.name("UimCardSubtitle")
    .template_(_templateObj);
	}
}
mixin(UIMShort!"CardSubtitle");

unittest {
	// assert(UIMCardSubtitle == `<uim-card-subtitle></uim-card-subtitle>`);
}
