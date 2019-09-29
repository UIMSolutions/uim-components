module uim.components.buttons.toolbar;

import uim.components;

class DUIMButtonToolbar : DUIMComponent {
	mixin(H5This!("uim-button-toolbar"));

	mixin(MyAttribute!("label", "aria-label"));
	mixin(MyContent!("group", "UIMButtonGroup"));

	override DVUEComponent toVueComponent() {
		return super.toVueComponent
		.name("UimButtonToolbar")
    	.computed("classes()", `return [""]`)
    	.template_(BS4ButtonToolbar([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"ButtonToolbar");

unittest {
	// assert(UIMButtonToolbar == `<uim-button-toolbar></uim-button-toolbar>`);
	// assert(UIMButtonToolbar.label("hallo") == `<uim-button-toolbar aria-label="hallo"></uim-button-toolbar>`);
}