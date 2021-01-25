module uim.components.basic.forms.controls.date;

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

	auto f = File("./public/js/uim/components/basic/forms/controls/date.js", "w");
  f.write(UIMInputDate.toVUEComponent.toString);
}