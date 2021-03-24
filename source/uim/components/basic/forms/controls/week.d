module uim.components.basic.forms.controls.week;

import uim.components;

@safe: 

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

	// auto f = File("./public/js/uim/components/basic/forms/controls/week.js", "w");
  // f.write(UIMInputWeek.toVUEComponent.toString);
}