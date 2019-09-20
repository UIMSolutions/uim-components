module uim.components.cards.body_;

import uim.components;

class DUIMCardBody : DUIMComponent {
	mixin(H5This!("uim-card-body"));
	
	auto toVue() {
		return super.toVue
		.name("UimCardBody")
    	.computed("classes()", `return [""]`)
    	.template_(BS4CardBody([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"CardBody");
unittest {
	assert(UIMCardBody == `<uim-card-body></uim-card-body>`);
}