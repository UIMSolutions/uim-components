module uim.components.basic.cards.link;

import uim.components;

@safe:

class DUIMCardLink : DUIMComponent {
	mixin(H5This!("uim-card-link"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {	
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5CardLink("<slot />");
		return super.toVUEComponent		
		.name("uim-card-link");
	} */
}
mixin(UIMShort!"CardLink");

unittest {
	assert(Assert(UIMCardLink, `<uim-card-link></uim-card-link>`));

	// auto f = File("./public/js/uim/components/basic/cards/link.js", "w"); 
  // f.write(UIMCardLink.toVUEComponent.toString);
}