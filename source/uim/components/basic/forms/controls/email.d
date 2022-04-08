module uim.components.basic.forms.controls.email;

import uim.components;

@safe: 

class DUIMInputEmail : DUIMComponent {
	mixin(H5This!("uim-input-email"));

	override void initialize() {
		super.initialize;
	}
	
/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5InputEmail();
		return super.toVUEComponent		
		.name("uim-input-email")
		;
	} */	
}
mixin(UIMShort!("InputEmail"));

unittest {
	assert(Assert(UIMInputEmail, "<uim-input-email></uim-input-email>"));	

	// auto f = File("./public/js/uim/components/basic/forms/controls/email.js", "w");
  // f.write(UIMInputEmail.toVUEComponent.toString);
}