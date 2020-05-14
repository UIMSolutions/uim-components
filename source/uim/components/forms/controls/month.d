module uim.components.forms.controls.month;

import uim.components; 

class DUIMInputMonth : DUIMComponent {
	mixin(H5This!("uim-input-month"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputMonth();
		return super.toVUEComponent		
		.name("uim-input-month")
		;
	}	
}
mixin(UIMShort!("InputMonth"));

unittest {
	assert(Assert(UIMInputMonth, "<uim-input-month></uim-input-month>"));	
}