module uim.components.forms.controls.radio;

import uim.components; 

class DUIMInputRadio : DUIMComponent {
	mixin(H5This!("uim-input-radio"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputRadio();
		return super.toVueComponent		
		.name("UimInputRadio")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputRadio"));

unittest {
	// assert(UIMInputRadio == "<uim-input-radio></uim-input-radio>");	
}