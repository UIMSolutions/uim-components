module uim.components.cards.deck;

import uim.components;

class DUIMCardDeck : DUIMComponent {
	mixin(H5This!("uim-card-deck"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4CardDeck("<slot />");
		return super.toVueComponent		
		.name("UimCardDeck")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"CardDeck");

unittest {
	// assert(UIMCardDeck == `<uim-card-deck></uim-card-deck>`);
}
