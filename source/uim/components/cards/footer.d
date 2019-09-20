module uim.components.cards.footer;

import uim.components;

class DUIMCardFooter : DUIMComponent {
	mixin(H5This!("uim-card-footer"));

	auto toVue() {
		return super.toVue
		.name("UimCardFooter")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardFooter([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardFooter");
unittest {
	assert(UIMCardFooter == `<uim-card-footer></uim-card-footer>`);
}
