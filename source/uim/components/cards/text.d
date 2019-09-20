module uim.components.cards.text;

import uim.components;

class DUIMCardText : DUIMComponent {
	mixin(H5This!("uim-card-text"));

	auto toVue() {
		return super.toVue
		.name("UimCardText")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardText([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardText");
unittest {
	assert(UIMCardText == `<uim-card-text></uim-card-text>`);
}
