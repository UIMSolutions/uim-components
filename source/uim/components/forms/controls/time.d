module uim.components.forms.controls.time;

import uim.components; 

class DUIMInputTime : DUIMComponent {
	mixin(H5This!("uim-input-time"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputTime();
		return super.toVueComponent		
		.name("UimInputTime")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputTime"));

unittest {
	// assert(UIMInputTime == "<uim-input-time></uim-input-time>");	
}