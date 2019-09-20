module uim.components.cards.columns;

import uim.components;

class DUIMCardColumns : DUIMComponent {
	mixin(H5This!("uim-card-columns"));
	
	auto toVue() {
		return super.toVue
		.name("UimCardColumns")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardColumns([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardColumns");
unittest {
	assert(UIMCardColumns == `<uim-card-columns></uim-card-columns>`);
}
