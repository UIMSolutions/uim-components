﻿module uim.components.basic.forms.controls.month;

import uim.components;

@safe: 

class DUIMInputMonth : DUIMComponent {
	mixin(H5This!("uim-input-month"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputMonth();
		return super.toVUEComponent		
		.name("uim-input-month")
		;
	}	 */
}
mixin(UIMShort!("InputMonth"));

unittest {
	assert(Assert(UIMInputMonth, "<uim-input-month></uim-input-month>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/month.js", "w");
  // f.write(UIMInputMonth.toVUEComponent.toString);
}