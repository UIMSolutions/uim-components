module uim.components.basic.cards.text;

import uim.components;

@safe:

class DUIMCardText : DUIMComponent {
	mixin(H5This!("uim-card-text"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj = BS5CardText("<slot />");
		return super.toVUEComponent		
		.name("uim-card-text");
	} */
}
mixin(UIMShort!"CardText");
unittest {
	assert(Assert(UIMCardText, `<uim-card-text></uim-card-text>`));

	// auto f = File("./public/js/uim/components/basic/cards/text.js", "w"); 
  // f.write(UIMCardText.toVUEComponent.toString);
}
