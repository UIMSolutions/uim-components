module uim.components.progresses.progress;

import uim.components;

class DUIMProgress : DUIMComponent {
	mixin(H5This!("uim-progress"));
	override public void _init() {
		super._init;
	}
	override DVUEComponent toVueComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Progress("<slot />");
		return super.toVueComponent		
		.name("UimProgress")
		.template_(_templateObj);
	}
}
mixin(UIMShort!"Progress");

unittest {
	// assert(UIMProgress == `<uim-progress></uim-progress>`);
}