module uim.components.forms.controls.password;

import uim.components; 

class DUIMInputPassword : DUIMComponent {
	mixin(H5This!("uim-input-password"));
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputPassword();
		return super.toVueComponent		
		.name("UimInputPassword")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputPassword"));

unittest {
	// assert(UIMInputPassword == "<uim-input-password></uim-input-password>");		
}