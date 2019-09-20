module uim.components.cards.card;

import uim.components;

class DUIMCard : DUIMComponent {
	mixin(H5This!("uim-card"));

	O block(this O)() { return this.classes("card-block"); }
	O inverse(this O)() { return this.classes("card-inverse"); }

	mixin(MyContent!("image", "UIMCardImage"));
	mixin(MyContent!("bdy", "UIMCardBody"));

	auto toVue() {
		return super.toVue
		.name("UimCard")
    	.computed("classes()", `return [""]`)
    	.template_(BS4Card([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"Card");

unittest {
	assert(UIMCard == `<uim-card></uim-card>`);
}
