module uim.components.cards.deck;

import uim.components;

class DUIMCardDeck : DUIMComponent {
	mixin(H5This!("uim-card-deck"));
	
	auto toVue() {
		return super.toVue
		.name("UimCarddeck")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardDeck([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardDeck");

unittest {
	assert(UIMCardDeck == `<uim-card-deck></uim-card-deck>`);
}
