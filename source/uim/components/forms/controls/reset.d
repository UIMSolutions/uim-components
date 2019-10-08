﻿module uim.components.forms.controls.reset;

import uim.components; 

class DUIMInputReset : DUIMComponent {
	mixin(H5This!("uim-input-reset"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputReset();
		return super.toVUEComponent		
		.name("UimInputReset");
	}	
}
mixin(UIMShort!("InputReset"));

unittest {
	assert(Assert(UIMInputReset, "<uim-input-reset></uim-input-reset>"));	
}