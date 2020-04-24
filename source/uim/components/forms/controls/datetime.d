module uim.components.forms.controls.datetime;

import uim.components; 

class DUIMInputDateTime : DUIMComponent {
	mixin(H5This!("uim-input-datetime"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputDateTime();
		return super.toVUEComponent		
		.name("uim-input-dateTime")
		;
	}	
}
mixin(UIMShort!("InputDateTime"));

unittest {
	assert(Assert(UIMInputDateTime, "<uim-input-datetime></uim-input-datetime>"));	
}