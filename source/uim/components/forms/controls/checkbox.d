module uim.components.forms.controls.checkbox;

import uim.components; 

class DUIMInputCheckbox : DUIMComponent {
	mixin(H5This!("uim-input-checkbox"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputCheckbox();
		return super.toVUEComponent		
		.name("UimInputCheckbox")
		;
	}	
}
mixin(UIMShort!("InputCheckbox"));

unittest {
	assert(Assert(UIMInputCheckbox, "<uim-input-checkbox></uim-input-checkbox>"));	
}