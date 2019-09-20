module uim.components.buttons.link;

import uim.components;

class DUIMButtonLink : DUIMComponent {
	mixin(H5This!("uim-button-link"));

	auto toVue() {
		return super.toVue
		.name("UimButtonLink")
    	.computed("classes()", `return [""]`)
    	.template_(BS4ButtonLink([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"ButtonLink");

unittest {
	assert(UIMButtonLink == `<uim-button-link></uim-button-link>`);
}
