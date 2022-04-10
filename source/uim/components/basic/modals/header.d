﻿module uim.components.basic.modals.header;

import uim.components;

@safe:

class DUIMModalHeader : DUIMComponent {
	mixin(H5This!("DIV", ["modal-header"]));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ModalHeader("<slot />");
		return super.toVUEComponent		
		.name("uim-modal-header")
		;
	} */
}
mixin(UIMShort!"ModalHeader");

unittest {	
	assert(Assert(UIMModalHeader, `<div class="modal-header"></div>`));

	// auto f = File("./public/js/uim/components/basic/modals/header.js", "w"); 
  // f.write(UIMModalHeader.toVUEComponent.toString);
}