module uim.components.cards.deckwrapper;

import uim.components;

class DUIMCardDeckWrapper : DUIMComponent {
	mixin(H5This!("uim-card-deck-wrapper"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS4CardDeckWrapper("<slot />");
		return super.toVUEComponent		
		.name("UimCardDeckWrapper");
	}
}
mixin(UIMShort!"CardDeckWrapper");

unittest {
	assert(Assert(UIMCardDeckWrapper, `<uim-card-deck-wrapper></uim-card-deck-wrapper>`));
}
