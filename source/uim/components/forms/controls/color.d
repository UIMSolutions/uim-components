module uim.components.forms.controls.color;

import uim.components; 

class DUIMInputColor : DUIMComponent {
	mixin(H5This!("uim-input-color"));	

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputColor();
		return super.toVUEComponent		
		.name("uim-input-color")
		;
	}
}
mixin(UIMShort!("InputColor"));

unittest {
	assert(Assert(UIMInputColor, "<uim-input-color></uim-input-color>"));
}