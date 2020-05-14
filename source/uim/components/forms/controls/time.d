module uim.components.forms.controls.time;

import uim.components; 

class DUIMInputTime : DUIMComponent {
	mixin(H5This!("uim-input-time"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputTime();
		return super.toVUEComponent		
		.name("uim-input-time");
	}	
}
mixin(UIMShort!("InputTime"));

unittest {
	assert(Assert(UIMInputTime, "<uim-input-time></uim-input-time>"));	
}