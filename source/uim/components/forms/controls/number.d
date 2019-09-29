module uim.components.forms.controls.number;

import uim.components; 

class DUIMInputNumber : DUIMComponent {
	mixin(H5This!("uim-input-number"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputButton();
		return super.toVueComponent		
		.name("UimInputButton")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputNumber"));

unittest {
	// assert(UIMInputNumber == "<uim-input-number></uim-input-number>");		
}