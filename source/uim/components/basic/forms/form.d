module uim.components.basic.forms.form;

import uim.components;

@safe:

class DUIMForm : DUIMComponent {
	mixin(H5This!("uim-form"));

	override void initialize() {
		super.initialize;
	}
	
	O inline(this O)(bool value = true) { return this.classes("form-inline"); }

	mixin(MyContent!("formGroup", "UIMFormGroup"));

/* 	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5Form("<slot />");
		return super.toVUEComponent		
		.name("uim-form")
		;
	} */
}
mixin(UIMShort!"Form");

unittest {
	assert(Assert(UIMForm, `<uim-form></uim-form>`));
}