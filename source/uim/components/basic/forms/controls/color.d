module uim.components.basic.forms.controls.color;

import uim.components;

@safe: 

class DUIMInputColor : DUIMComponent {
	mixin(H5This!("uim-input-color"));	

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputColor();
		return super.toVUEComponent		
		.name("uim-input-color")
		;
	} */
}
mixin(UIMShort!("InputColor"));

unittest {
	assert(Assert(UIMInputColor, "<uim-input-color></uim-input-color>"));

	// auto f = File("./public/js/uim/components/basic/forms/controls/color.js", "w");
  // f.write(UIMInputColor.toVUEComponent.toString);
}