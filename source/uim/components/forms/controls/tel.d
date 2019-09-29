module uim.components.forms.controls.tel;

import uim.components; 

class DUIMInputTel : DUIMComponent {
	mixin(H5This!("uim-input-tel"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputTel();
		return super.toVueComponent		
		.name("UimInputTel")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputTel"));

unittest {
	// assert(UIMInputTel == "<uim-input-tel></uim-input-tel>");	
}