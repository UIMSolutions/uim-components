module uim.components.forms.controls.color;

import uim.components; 

class DUIMInputColor : DUIMComponent {
	mixin(H5This!("uim-input-color"));	

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputColor();
		return super.toVueComponent		
		.name("UimInputColor")
		.template_(_templateObj);
	}
}
mixin(UIMShort!("InputColor"));

unittest {
	// assert(UIMInputColor == "<uim-input-color></uim-input-color>");
}