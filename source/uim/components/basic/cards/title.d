module uim.components.basic.cards.title;

import uim.components;

@safe:

class DUIMCardTitle : DUIMComponent {
	mixin(H5This!("uim-card-title"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5CardTitle("<slot />");
		return super.toVUEComponent		
		.name("uim-card-title");
	}
}
mixin(UIMShort!"CardTitle");

unittest {
	assert(Assert(UIMCardTitle, `<uim-card-title></uim-card-title>`));

	// auto f = File("./public/js/uim/components/basic/cards/title.js", "w"); 
  // f.write(UIMCardTitle.toVUEComponent.toString);
}

