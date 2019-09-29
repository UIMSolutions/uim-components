module uim.components.forms.controls.submit;

import uim.components; 

class DUIMInputSubmit : DUIMComponent {
	mixin(H5This!("uim-input-submit"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputButton();
		return super.toVueComponent		
		.name("UimInputButton")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputSubmit"));

unittest {
	// assert(UIMInputSubmit == "<uim-input-submit></uim-input-submit>");	
}