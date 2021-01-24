module uim.components.cards.deckwrapper;

import uim.components;

class DUIMCardDeckwrapper : DUIMComponent {
	mixin(H5This!("uim-card-deck-wrapper"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5CardDeckwrapper("<slot />");
		return super.toVUEComponent		
		.name("uim-card-deckwrapper");
	}
}
mixin(UIMShort!"CardDeckwrapper");

unittest {
	assert(Assert(UIMCardDeckwrapper, `<uim-card-deck-wrapper></uim-card-deck-wrapper>`));
}
