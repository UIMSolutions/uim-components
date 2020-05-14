module uim.components.buttons.toolbar;

import uim.components;

class DUIMButtonToolbar : DUIMComponent {
	mixin(H5This!("uim-button-toolbar"));

	mixin(MyAttribute!("label", "aria-label"));
	mixin(MyContent!("group", "UIMButtonGroup"));

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;

		_templateObj = BS4ButtonToolbar("<slot />");
		return super.toVUEComponent		
		.name("uim-button-toolbar")
    .computed("classes", `return [""]`);
	}
}
mixin(UIMShort!"ButtonToolbar");

unittest {
	assert(Assert(UIMButtonToolbar, `<uim-button-toolbar></uim-button-toolbar>`));
	assert(Assert(UIMButtonToolbar.label("hallo"), `<uim-button-toolbar aria-label="hallo"></uim-button-toolbar>`));
}