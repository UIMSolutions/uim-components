module uim.components.forms.controls.hidden;

import uim.components; 

class DUIMInputHidden : DUIMComponent {
	mixin(H5This!("uim-input-hidden"));	
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputHidden();
		return super.toVUEComponent		
		.name("uim-input-hidden")
		;
	}
}
mixin(UIMShort!("InputHidden"));

unittest {
	assert(Assert(UIMInputHidden, "<uim-input-hidden></uim-input-hidden>"));	
}