module uim.components.basic.cards.body_;

import uim.components;

@safe:

class DUIMCardBody : DUIMComponent {
	mixin(H5This!("uim-card-body"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5CardBody("<slot />");
		return super.toVUEComponent		
		.name("uim-card-body")
		;
	}
}
mixin(UIMShort!"CardBody");
unittest {
	assert(Assert(UIMCardBody, `<uim-card-body></uim-card-body>`));

	// auto f = File("./public/js/uim/components/basic/cards/body.js", "w"); 
  // f.write(UIMCardBody.toVUEComponent.toString);
}