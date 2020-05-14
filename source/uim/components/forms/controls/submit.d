module uim.components.forms.controls.submit;

import uim.components; 

class DUIMInputSubmit : DUIMComponent {
	mixin(H5This!("uim-input-submit"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputButton();
		return super.toVUEComponent		
		.name("uim-input-button");
	}
}
mixin(UIMShort!("InputSubmit"));

unittest {
	assert(Assert(UIMInputSubmit, "<uim-input-submit></uim-input-submit>"));	
}