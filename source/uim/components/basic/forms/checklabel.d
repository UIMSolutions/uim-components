module uim.components.basic.forms.checklabel;

import uim.components;

class DUIMFormCheckLabel : DUIMComponent {
	mixin(H5This!("uim-form-check-label"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5FormCheckLabel("<slot />");
		return super.toVUEComponent		
		.name("uim-form-CheckLabel")
		;
	}
}
mixin(UIMShort!"FormCheckLabel");

unittest {
	assert(Assert(UIMFormCheckLabel, `<uim-form-check-label></uim-form-check-label>`));

	auto f = File("./public/js/uim/components/basic/forms/checkinput.js", "w");
  f.write(UIMFormCheckInput.toVUEComponent.toString);
}