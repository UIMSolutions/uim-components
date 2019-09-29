module uim.components.forms.controls.date;

import uim.components; 

class DUIMInputDate : DUIMComponent {
	mixin(H5This!("uim-input-date"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputDate();
		return super.toVueComponent		
		.name("UimInputDate")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputDate"));

unittest {
	// assert(UIMInputDate == "<uim-input-date></uim-input-date>");	
}