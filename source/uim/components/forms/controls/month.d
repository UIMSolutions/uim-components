module uim.components.forms.controls.month;

import uim.components; 

class DUIMInputMonth : DUIMComponent {
	mixin(H5This!("uim-input-month"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputMonth();
		return super.toVueComponent		
		.name("UimInputMonth")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputMonth"));

unittest {
	// assert(UIMInputMonth == "<uim-input-month></uim-input-month>");	
}