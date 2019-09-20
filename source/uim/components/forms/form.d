module uim.components.forms.form;

import uim.components;

class DUIMForm : DUIMComponent {
	mixin(H5This!("uim-form"));

	O inline(this O)(bool value = true) { return this.classes("form-inline"); }

	mixin(MyContent!("formGroup", "UIMFormGroup"));
}
mixin(UIMShort!"Form");

unittest {
	assert(UIMForm == `<uim-form></uim-form>`);
}