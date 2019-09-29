module uim.components.forms.controls.hidden;

import uim.components; 

class DUIMInputHidden : DUIMComponent {
	mixin(H5This!("uim-input-hidden"));	
	
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputHidden();
		return super.toVueComponent		
		.name("UimInputHidden")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputHidden"));

unittest {
	// assert(UIMInputHidden == "<uim-input-hidden></uim-input-hidden>");	
}