module uim.components.basic.forms.controls.hidden;

import uim.components;

@safe: 

class DUIMInputHidden : DUIMComponent {
	mixin(H5This!("uim-input-hidden"));	
	
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputHidden();
		return super.toVUEComponent		
		.name("uim-input-hidden")
		;
	}
}
mixin(UIMShort!("InputHidden"));

unittest {
	assert(Assert(UIMInputHidden, "<uim-input-hidden></uim-input-hidden>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/hidden.js", "w");
  // f.write(UIMInputHidden.toVUEComponent.toString);
}