﻿module uim.components.basic.forms.controls.submit;

import uim.components;

@safe: 

class DUIMInputSubmit : DUIMComponent {
	mixin(H5This!("uim-input-submit"));	

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputButton();
		return super.toVUEComponent		
		.name("uim-input-button");
	}*/ 
} 
mixin(UIMShort!("InputSubmit"));

unittest {
	assert(Assert(UIMInputSubmit, "<uim-input-submit></uim-input-submit>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/submit.js", "w");
  // f.write(UIMInputSubmit.toVUEComponent.toString);
}