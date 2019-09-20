module uim.components.cards.blockquote;

import uim.components;

class DUIMCardBlockquote : DUIMComponent {
	mixin(H5This!("uim-card-blockquote"));

	auto toVue() {
		return super.toVue
		.name("UimCardBlockquote")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardBlockquote([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardBlockquote");
unittest {
	assert(UIMCardBlockquote == `<uim-card-blockquote></uim-card-blockquote>`);
}

