module uim.components.cards.title;

import uim.components;

class DUIMCardTitle : DUIMComponent {
	mixin(H5This!("uim-card-title"));

	auto toVue() {
		return super.toVue
		.name("UimCardTitle")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardTitle([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardTitle");

unittest {
	assert(UIMCardTitle == `<uim-card-title></uim-card-title>`);
}
