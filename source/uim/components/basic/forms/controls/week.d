module uim.components.basic.forms.controls.week;

import uim.components; 

class DUIMInputWeek : DUIMComponent {
	mixin(H5This!("uim-input-week"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputWeek();
		return super.toVUEComponent		
		.name("uim-input-week");
	}	
}
mixin(UIMShort!("InputWeek"));

unittest {
	assert(Assert(UIMInputWeek, "<uim-input-week></uim-input-week>"));	
}