module uim.components.progresses.bar;

import uim.components;

class DUIMProgressBar : DUIMComponent {
	mixin(H5This!("uim-progress-bar"));
	override public void _init() {
		super._init;
	}
	O valueNow(this O)(string value) { return this.attributes(["aria-valuenow":value]); }
	O valueMin(this O)(string value) { return this.attributes(["aria-valuemin":value]); }
	O valueMax(this O)(string value) { return this.attributes(["aria-valuemax":value]); }
	O color(this O)(string colorName) { return this.classes("bg-"~colorName); }
	O striped(this O)(bool mode = true) { return this.classes("progress-bar-striped"); }
	O animated(this O)(bool mode = true) { return this.classes("progress-bar-animated"); }

	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS5ProgressBar("<slot />");
		return super.toVUEComponent		
		.name("uim-progress-bar")
		;
	}
}
mixin(UIMShort!"ProgressBar");

unittest {
	assert(Assert(UIMProgressBar, `<uim-progress-bar></uim-progress-bar>`));
}