module uim.components.forms.controls.checkbox;

import uim.components; 

class DUIMInputCheckbox : DUIMComponent {
	mixin(H5This!("uim-input-checkbox"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputCheckbox();
		return super.toVueComponent		
		.name("UimInputCheckbox")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputCheckbox"));

unittest {
	// assert(UIMInputCheckbox == "<uim-input-checkbox></uim-input-checkbox>");	
}