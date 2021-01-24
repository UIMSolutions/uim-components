module uim.components.forms.controls.date;

import uim.components; 

class DUIMInputDate : DUIMComponent {
	mixin(H5This!("uim-input-date"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputDate();
		return super.toVUEComponent		
		.name("uim-input-date")
		;
	}	
}
mixin(UIMShort!("InputDate"));

unittest {
	assert(Assert(UIMInputDate, "<uim-input-date></uim-input-date>"));	
}