module uim.components.basic.forms.controls.tel;

import uim.components;

@safe: 

class DUIMInputTel : DUIMComponent {
	mixin(H5This!("uim-input-tel"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputTel();
		return super.toVUEComponent		
		.name("uim-input-tel");
	}	
}
mixin(UIMShort!("InputTel"));

unittest {
	assert(Assert(UIMInputTel, "<uim-input-tel></uim-input-tel>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/tel.js", "w");
  // f.write(UIMInputTel.toVUEComponent.toString);
}