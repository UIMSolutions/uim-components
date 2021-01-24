module uim.components.forms.controls.email;

import uim.components; 

class DUIMInputEmail : DUIMComponent {
	mixin(H5This!("uim-input-email"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputEmail();
		return super.toVUEComponent		
		.name("uim-input-email")
		;
	}	
}
mixin(UIMShort!("InputEmail"));

unittest {
	assert(Assert(UIMInputEmail, "<uim-input-email></uim-input-email>"));	
}