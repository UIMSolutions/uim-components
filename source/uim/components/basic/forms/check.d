module uim.components.basic.forms.check;

import uim.components;

class DUIMFormCheckbox : DUIMComponent {
	mixin(H5This!("uim-form-check"));

	mixin(TProperty!("string", "forId"));

	O inline(this O)() { return this.classes("form-check-inline"); }

	mixin(MyContent!("label", "UIMFormCheckLabel"));
}
mixin(UIMShort!"FormCheckbox");

unittest {
	assert(Assert(UIMFormCheckbox, `<uim-form-check></uim-form-check>`));

	// auto f = File("./public/js/uim/components/basic/forms/check.js", "w");
  // f.write(UIMFormCheckbox.toVUEComponent.toString);
}