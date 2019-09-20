module uim.components.cards.block;

import uim.components;

class DUIMCardBlock : DUIMComponent {
	mixin(H5This!("uim-card-block"));

	auto toVue() {
		return super.toVue
		.name("UimCardBlock")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardBlock([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardBlock");
unittest {
	assert(UIMCardBlock == `<uim-card-block></uim-card-block>`);
}
