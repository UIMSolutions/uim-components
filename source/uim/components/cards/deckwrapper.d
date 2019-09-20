module uim.components.cards.deckwrapper;

import uim.components;

class DUIMCardDeckWrapper : DUIMComponent {
	mixin(H5This!("uim-card-deck-wrapper"));

	auto toVue() {
		return super.toVue
		.name("UimCardDeckWrapper")
    	.computed("classes()", `return [""]`)
    	.template_(BS4DeckWrapper([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardDeckWrapper");

unittest {
	assert(UIMCardDeckWrapper == `<uim-card-deck-wrapper></uim-card-deck-wrapper>`);
}
