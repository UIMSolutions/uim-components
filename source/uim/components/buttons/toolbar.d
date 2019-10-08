module uim.components.buttons.toolbar;

import uim.components;

class DUIMButtonToolbar : DUIMComponent {
	mixin(H5This!("uim-button-toolbar"));

	mixin(MyAttribute!("label", "aria-label"));
	mixin(MyContent!("group", "UIMButtonGroup"));

	override DVUEComponent toVUEComponent() {
		return super.toVUEComponent
		.name("UimButtonToolbar")
    	.computed("classes", `return [""]`)
    	.template_(BS4ButtonToolbar([":class":"this.classes"], "<slot />"));
	}
}
mixin(UIMShort!"ButtonToolbar");

unittest {
	assert(Assert(UIMButtonToolbar, `<uim-button-toolbar></uim-button-toolbar>`));
	assert(Assert(UIMButtonToolbar.label("hallo"), `<uim-button-toolbar aria-label="hallo"></uim-button-toolbar>`));
}