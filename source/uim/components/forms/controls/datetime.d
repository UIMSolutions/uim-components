module uim.components.forms.controls.datetime;

import uim.components; 

class DUIMInputDateTime : DUIMComponent {
	mixin(H5This!("uim-input-datetime"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputDateTime();
		return super.toVueComponent		
		.name("UimInputDateTime")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputDateTime"));

unittest {
	// assert(UIMInputDateTime == "<uim-input-datetime></uim-input-datetime>");	
}