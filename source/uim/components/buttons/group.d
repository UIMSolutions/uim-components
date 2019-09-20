module uim.components.buttons.group;

import uim.components;

class DUIMButtonGroup : DUIMComponent {
	mixin(H5This!("uim-button-group"));
	override public void init() {
		super.init;
	}
	mixin(MyAttribute!("label", "aria-label"));
	unittest {
	}

	mixin(MyContent!("button", "UIMButton"));
	unittest {
	}

	mixin(MyContent!("link", "UIMButtonLink"));
	unittest {
	}

	auto toVue() {
		return super.toVue
		.name("UimButtonGroup")
    	.computed("classes()", `return [""]`)
    	.template_(BS4ButtonGroup([":class":"this.classes"], "<slot />"));
	}

}
mixin(UIMShort!"ButtonGroup");

unittest {
	assert(UIMButtonGroup == `<uim-button-group></uim-button-group>`);
}