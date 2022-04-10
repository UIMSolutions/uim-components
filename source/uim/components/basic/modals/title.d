module uim.components.basic.modals.title;

import uim.components;

@safe:

class DUIMModalTitle : DUIMComponent {
	mixin(H5This!("uim-modal-title"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ModalTitle("<slot />");
		return super.toVUEComponent		
		.name("uim-modal-title")
		;
	} */
}
mixin(UIMShort!"ModalTitle");

unittest {
	assert(Assert(UIMModalTitle, `<uim-modal-title></uim-modal-title>`));

	// auto f = File("./public/js/uim/components/basic/modals/title.js", "w"); 
  // f.write(UIMModalTitle.toVUEComponent.toString);
}