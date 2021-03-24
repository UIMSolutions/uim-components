module uim.components.basic.cards.deckwrapper;

import uim.components;

@safe:

class DUIMCardDeckwrapper : DUIMComponent {
	mixin(H5This!("uim-card-deckwrapper"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5CardDeckwrapper("<slot />");
		return super.toVUEComponent		
		.name("uim-card-deckwrapper");
	}
}
mixin(UIMShort!"CardDeckwrapper");

unittest {
	assert(Assert(UIMCardDeckwrapper, `<uim-card-deckwrapper></uim-card-deckwrapper>`));

	// auto f = File("./public/js/uim/components/basic/cards/deckwrapper.js", "w"); 
  // f.write(UIMCardDeckwrapper.toVUEComponent.toString);
}

