module uim.components.basic.cards.deck;

import uim.components;

class DUIMCardDeck : DUIMComponent {
	mixin(H5This!("uim-card-deck"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5CardDeck("<slot />");
		return super.toVUEComponent		
		.name("uim-card-deck")
		;
	}
}
mixin(UIMShort!"CardDeck");

unittest {
	assert(Assert(UIMCardDeck, `<uim-card-deck></uim-card-deck>`));

	auto f = File("./public/js/uim/components/basic/cards/deck.js", "w"); 
  f.write(UIMCardDeck.toVUEComponent.toString);
}
