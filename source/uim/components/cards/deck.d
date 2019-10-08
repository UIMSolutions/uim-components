module uim.components.cards.deck;

import uim.components;

class DUIMCardDeck : DUIMComponent {
	mixin(H5This!("uim-card-deck"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardDeck("<slot />");
		return super.toVUEComponent		
		.name("UimCardDeck")
		;
	}
}
mixin(UIMShort!"CardDeck");

unittest {
	assert(Assert(UIMCardDeck, `<uim-card-deck></uim-card-deck>`));
}
