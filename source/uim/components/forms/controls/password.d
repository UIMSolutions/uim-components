module uim.components.forms.controls.password;

import uim.components; 

class DUIMInputPassword : DUIMComponent {
	mixin(H5This!("uim-input-password"));
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputPassword();
		return super.toVUEComponent		
		.name("UimInputPassword")
		;
	}	
}
mixin(UIMShort!("InputPassword"));

unittest {
	assert(Assert(UIMInputPassword, "<uim-input-password></uim-input-password>"));		
}