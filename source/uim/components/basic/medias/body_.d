module uim.components.basic.medias.body_;

import uim.components;

@safe:

class DUIMMediaBody : DUIMComponent {
	mixin(H5This!("uim-media-body"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5MediaBody("<slot />");
		return super.toVUEComponent		
		.name("uim-media-body")
		;
	} */
}
mixin(UIMShort!"MediaBody");

unittest {
	assert(Assert(UIMMediaBody, `<uim-media-body></uim-media-body>`));

	// auto f = File("./public/js/uim/components/basic/medias/body.js", "w"); 
  // f.write(UIMMediaBody.toVUEComponent.toString);
}
