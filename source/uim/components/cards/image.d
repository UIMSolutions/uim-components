module uim.components.cards.image;

import uim.components;

class DUIMCardImage : DUIMComponent { // default top
	mixin(H5This!("uim-card-img"));

	auto toVue() {
		return super.toVue
		.name("UimCardImage")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardImage([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardImage");
unittest {
	assert(UIMCardImage == `<uim-card-image></uim-card-image>`);
}
