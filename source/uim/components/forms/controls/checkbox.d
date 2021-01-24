module uim.components.forms.controls.checkbox;

import uim.components; 

class DUIMCheckbox : DUIMComponent {
	mixin(H5This!("uim-checkbox"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Checkbox();
		return super.toVUEComponent		
		.name("uim-checkbox")
		;
	}	
}
mixin(UIMShort!("Checkbox"));

unittest {
	assert(Assert(UIMCheckbox, "<uim-checkbox></uim-checkbox>"));	
}