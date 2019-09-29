module uim.components.forms.controls.week;

import uim.components; 

class DUIMInputWeek : DUIMComponent {
	mixin(H5This!("uim-input-week"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4InputWeek();
		return super.toVueComponent		
		.name("UimInputWeek")
		.template_(_templateObj);
	}	
}
mixin(UIMShort!("InputWeek"));

unittest {
	// assert(UIMInputUrl == "<uim-input-week></uim-input-week>");	
}