﻿module uim.components.basic.forms.checklabel;

import uim.components;

@safe:

class DUIMFormCheckLabel : DUIMComponent {
	mixin(H5This!("uim-form-check-label"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5FormCheckLabel("<slot />");
		return super.toVUEComponent		
		.name("uim-form-CheckLabel")
		;
	} */
}
mixin(UIMShort!"FormCheckLabel");

unittest {
	assert(Assert(UIMFormCheckLabel, `<uim-form-check-label></uim-form-check-label>`));

	// auto f = File("./public/js/uim/components/basic/forms/label.js", "w");
  // f.write(UIMFormCheckLabel.toVUEComponent.toString);
}