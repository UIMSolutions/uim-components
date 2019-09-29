module uim.components.forms.controls.text;

import uim.components; 

class DUIMInputText : DUIMComponent {
	mixin(H5This!("uim-input-text"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputText();
		return super.toVueComponent		
		.name("UimInputText")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputText"));

unittest {
	// assert(UIMInputText == "<uim-input-text></uim-input-text>");	
}