module uim.components.cards.subtitle;

import uim.components;

class DUIMCardSubtitle : DUIMComponent {
	mixin(H5This!("uim-card-subtitle"));

	auto toVue() {
		return super.toVue
		.name("UimCardSubtitle")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardSubtitle([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardSubtitle");

unittest {
	assert(UIMCardSubtitle == `<uim-card-subtitle></uim-card-subtitle>`);
}
