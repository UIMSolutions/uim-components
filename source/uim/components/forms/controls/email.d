module uim.components.forms.controls.email;

import uim.components; 

class DUIMInputEmail : DUIMComponent {
	mixin(H5This!("uim-input-email"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputEmail();
		return super.toVueComponent		
		.name("UimInputEmail")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputEmail"));

unittest {
	// assert(UIMInputEmail == "<uim-input-email></uim-input-email>");	
}