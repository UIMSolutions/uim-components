﻿module uim.components.basic.forms.controls.password;

import uim.components; 

class DUIMPassword : DUIMComponent {
	mixin(H5This!("uim-password"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Password();
		return super.toVUEComponent		
		.name("uim-password")
		;
	}	
}
mixin(UIMShort!("Password"));

unittest {
	assert(Assert(UIMPassword, "<uim-password></uim-password>"));	

		auto f = File("./public/js/uim/components/basic/forms/controls/number.js", "w");
  f.write(UIMInputNumber.toVUEComponent.toString);	
}