module uim.components.basic.forms.controls.time;

import uim.components; 

class DUIMInputTime : DUIMComponent {
	mixin(H5This!("uim-input-time"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputTime();
		return super.toVUEComponent		
		.name("uim-input-time");
	}	
}
mixin(UIMShort!("InputTime"));

unittest {
	assert(Assert(UIMInputTime, "<uim-input-time></uim-input-time>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/time.js", "w");
  // f.write(UIMInputTime.toVUEComponent.toString);
}