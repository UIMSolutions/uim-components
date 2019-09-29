module uim.components.cards.card;

import uim.components;

class DUIMCard : DUIMComponent {
	mixin(H5This!("uim-card"));

	O block(this O)() { return this.classes("card-block"); }
	O inverse(this O)() { return this.classes("card-inverse"); }

	mixin(MyContent!("image", "UIMCardImage"));
	mixin(MyContent!("bdy", "UIMCardBody"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj =  BS4Card("<slot />");
		return super.toVueComponent		
		.name("UimCard")
    .template_(_templateObj);
	}
}
mixin(UIMShort!"Card");

unittest {
	// assert(UIMCard == `<uim-card></uim-card>`);
}
