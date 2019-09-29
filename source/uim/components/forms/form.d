module uim.components.forms.form;

import uim.components;

class DUIMForm : DUIMComponent {
	mixin(H5This!("uim-form"));

	O inline(this O)(bool value = true) { return this.classes("form-inline"); }

	mixin(MyContent!("formGroup", "UIMFormGroup"));

	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Form("<slot />");
		return super.toVueComponent		
		.name("UimForm")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Form");

unittest {
	// assert(UIMForm == `<uim-form></uim-form>`);
}