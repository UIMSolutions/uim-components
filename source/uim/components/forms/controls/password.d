module uim.components.forms.controls.password;

import uim.components; 

class DUIMPassword : DUIMComponent {
	mixin(H5This!("uim-password"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Password();
		return super.toVUEComponent		
		.name("uim-password")
		;
	}	
}
mixin(UIMShort!("Password"));

unittest {
	assert(Assert(UIMPassword, "<uim-password></uim-password>"));		
}