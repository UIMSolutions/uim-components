module uim.components.basic.forms.checkinput;

import uim.components;

@safe:

class DUIMFormCheckInput : DUIMComponent {
	mixin(H5This!("uim-form-check-input"));

	override void initialize() {
		super.initialize;
	}

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5FormCheckInput();
		return super.toVUEComponent		
		.name("uim-form-checkInput")
		;
	} */
}
mixin(UIMShort!"FormCheckInput");

unittest {
	assert(Assert(UIMFormCheckInput, `<uim-form-check-input></uim-form-check-input>`));

	// auto f = File("./public/js/uim/components/basic/forms/checkinput.js", "w");
  // f.write(UIMFormCheckInput.toVUEComponent.toString);
}
