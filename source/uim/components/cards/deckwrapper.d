module uim.components.cards.deckwrapper;

import uim.components;

class DUIMCardDeckWrapper : DUIMComponent {
	mixin(H5This!("uim-card-deck-wrapper"));

	override DVUEComponent toVueComponent() {
		return super.toVueComponent
		.name("UimCardDeckWrapper")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardDeckWrapper([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardDeckWrapper");

unittest {
	// assert(UIMCardDeckWrapper == `<uim-card-deck-wrapper></uim-card-deck-wrapper>`);
}
