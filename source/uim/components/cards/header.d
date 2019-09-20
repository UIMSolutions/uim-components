module uim.components.cards.header;

import uim.components;

class DUIMCardHeader : DUIMComponent {
	mixin(H5This!("uim-card-header"));

	auto toVue() {
		return super.toVue
		.name("UimCardHeader")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardHeader([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardHeader");

unittest {
	assert(UIMCardHeader == `<uim-card-header></uim-card-header>`);
}
