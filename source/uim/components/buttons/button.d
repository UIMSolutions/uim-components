module uim.components.buttons.button;

import uim.components;

class DUIMButton : DUIMComponent {
	mixin(H5This!("uim-button"));

	auto toVue() {
		return super.toVue
		.name("UimButton")
    	.computed("classes()", `return [""]`)
    	.template_(BS4Button([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"Button");

unittest {
	assert(UIMButton == `<uim-button></uim-button>`);
}
