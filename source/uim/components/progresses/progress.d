﻿module uim.components.progresses.progress;

import uim.components;

class DUIMProgress : DUIMComponent {
	mixin(H5This!("uim-progress"));
	override public void _init() {
		super._init;
	}
	override DVUEComponent toVUEComponent() {
		if (_vueComponent) return _vueComponent;
		
		_templateObj =  BS4Progress("<slot />");
		return super.toVUEComponent		
		.name("UimProgress")
		;
	}
}
mixin(UIMShort!"Progress");

unittest {
	assert(Assert(UIMProgress, `<uim-progress></uim-progress>`));
}