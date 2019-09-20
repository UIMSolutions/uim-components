module uim.components.forms.check;

import uim.components;

class DUIMFormCheck : DUIMComponent {
	mixin(H5This!("uim-form-check"));

	mixin(TProperty!("string", "forId"));

	O inline(this O)() { return this.classes("form-check-inline"); }

	mixin(MyContent!("label", "UIMFormCheckLabel"));
}
mixin(UIMShort!"FormCheck");

unittest {
	assert(UIMFormCheck == `<uim-form-check></uim-form-check>`);
}