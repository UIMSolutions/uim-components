module uim.components.forms.controls.reset;

import uim.components; 

class DUIMInputReset : DUIMComponent {
	mixin(H5This!("uim-input-reset"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputReset();
		return super.toVueComponent		
		.name("UimInputReset")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputReset"));

unittest {
	// assert(UIMInputReset == "<uim-input-reset></uim-input-reset>");	
}